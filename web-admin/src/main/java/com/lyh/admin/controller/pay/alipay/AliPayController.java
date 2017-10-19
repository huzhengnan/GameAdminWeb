package com.lyh.admin.controller.pay.alipay;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.AlipayConstants;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeAppPayModel;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradeAppPayRequest;
import com.alipay.api.response.AlipayTradeAppPayResponse;
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaProxyConfig;
import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.model.OsaShop;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.service.OsaGamePlayerService;
import com.lyh.admin.service.OsaOperatorRechargeService;
import com.lyh.admin.service.OsaProxyConfigService;
import com.lyh.admin.service.OsaProxyRechargeService;
import com.lyh.admin.service.OsaShopService;
import com.lyh.admin.service.OsaUserService;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.admin.tools.pay.alipay.AlipayUtil;

/**
 * ClassName:AliPayController <br/>
 * Function: TODO (支付宝支付). <br/>
 * Reason: TODO (). <br/>
 * Date: 2017年8月3日 下午5:09:01 <br/>
 * 
 * @author lyh
 * @version
 * @see
 */
@Controller
@RequestMapping("/alipay/")
public class AliPayController extends BaseController {
	
	@Autowired
	private OsaUserService userService;
	@Autowired
	private OsaProxyRechargeService proxyRechargeService;
	
	@Autowired
	private OsaGamePlayerService gamePlayerService;
	
	@Autowired
	private OsaProxyConfigService proxyConfigService;
	
	@Autowired
	private OsaOperatorRechargeService operatorRechargeService;
	
	@Autowired
	private OsaShopService shopService;
	
	/**
	 * 统一收单交易支付接口
	 * 
	 * @param request
	 * @param response
	 * @param cashnum 支付金额
	 * @param mercid 商品id
	 * @param callback
	 */
	@RequestMapping(value = "/{serverId}/pay", method = RequestMethod.POST)
	public void orderPay(HttpServletRequest request, HttpServletResponse response, String fprice, String openId, String inviteCode, @PathVariable String serverId) throws Exception {
		logger.info("[/order/pay]");
		PrintWriter write = response.getWriter();
		boolean bCheck = false;
		double dPrice = Double.parseDouble(fprice);
		// double dPrice = ((double) price) / 100;
		int gold = 0;
		OsaGamePlayer player = null;
		OsaUser agent = null;
		double fetchMoneyRate = 0;
		OsaShop goods = shopService.findShopGoodsByPrice(dPrice);
		
		if (goods != null) {
			gold = goods.getGift() + goods.getNum();
			
			if (ToolUtils.isStringNull(inviteCode)) {
				agent = userService.findById(1);
			} else {
				agent = userService.getUsersByInviteCode(inviteCode);
			}
			
			if (agent.getRemainMoney() == null) {
				agent.setRemainMoney("0");
			}
			
			OsaProxyConfig agentConfig = proxyConfigService.findById(1);
			if (agentConfig != null && agentConfig.getOneLevel() != null) {
				fetchMoneyRate = Double.parseDouble(agentConfig.getOneLevel());
			}
			if (agent != null) {// && agent.getRemainMoney() >= gold在线冲值不要减money
				player = gamePlayerService.getGamePlayerByOpenId(openId);
				if (player != null) {
					OsaGameWorld gameWorld = gameWorldService.getWorldByWorldId(player.getWorldId());
					if (gameWorld != null) {
						
						bCheck = true;
					} else {
						logger.error("没有服务器玩家::" + serverId);
					}
				} else {
					logger.error("没有找到玩家::" + openId);
				}
			}
		} else {
			logger.error(dPrice + ":没有找到商品::" + openId);
		}
		
		if (!bCheck) {// 验证没有通过false
			StringBuffer weiXinVo = new StringBuffer();
			write.write(weiXinVo.append("return_code=").append("FAIL").toString());
			return;
		}
		
		try {

			//实例化客户端
			OsaProxyRecharge oPay = addPlayerMoney(agent, player, gold, (fetchMoneyRate * dPrice) / 100);
			AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do", AlipayUtil.ALIPAY_APPID, AlipayUtil.APP_PRIVATE_KEY, "json", AlipayConstants.CHARSET_UTF8, AlipayUtil.ALIPAY_PUBLIC_KEY, "RSA2");
			//实例化具体API对应的request类,类名称和接口名称对应,当前调用接口名称：alipay.trade.app.pay
			AlipayTradeAppPayRequest req = new AlipayTradeAppPayRequest();
			//SDK已经封装掉了公共参数，这里只需要传入业务参数。以下方法为sdk的model入参方式(model和biz_content同时存在的情况下取biz_content)。
			AlipayTradeAppPayModel model = new AlipayTradeAppPayModel();
			model.setBody("虚拟商品");
			model.setSubject("商品");
			model.setOutTradeNo(oPay.getTraderOrder());
			model.setTimeoutExpress("30m");
			model.setTotalAmount(fprice);
			model.setProductCode("QUICK_MSECURITY_PAY");
			req.setBizModel(model);
			req.setNotifyUrl( AlipayUtil.NOTIFY_URL);
			try {
			        //这里和普通的接口调用不同，使用的是sdkExecute
			        AlipayTradeAppPayResponse resp = alipayClient.sdkExecute(req);
			        StringBuilder builder = new StringBuilder();
				builder.append("return_code=").append("SUCCESS");
				builder.append("&orderStr=").append(resp.getBody());
				write.write(builder.toString());
			        System.out.println(resp.getBody());//就是orderString 可以直接给客户端请求，无需再做处理。
			    } catch (AlipayApiException e) {
			        e.printStackTrace();
			        logger.error("支付宝异常::",e);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("下订单异常::", e);
			StringBuffer weiXinVo = new StringBuffer();
			write.write(weiXinVo.append("return_code=").append("FAIL").toString());
		}
		
	}
	
	/**
	 * 订单支付微信服务器异步通知
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "/pay/notify", method = RequestMethod.POST)
	public void orderPayNotify(HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("[/order/pay/notify]");
		
		
		//获取支付宝POST过来反馈信息
		Map<String,String> params = new HashMap<String,String>();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
		    String name = (String) iter.next();
		    String[] values = (String[]) requestParams.get(name);
		    String valueStr = "";
		    for (int i = 0; i < values.length; i++) {
		        valueStr = (i == values.length - 1) ? valueStr + values[i]
		                    : valueStr + values[i] + ",";
		  }
		  //乱码解决，这段代码在出现乱码时使用。
		  //valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
		  params.put(name, valueStr);
		 }
			
		PrintWriter write = response.getWriter();
		// 获取到返回的所有参数 先判断是否交易成功trade_status 再做签名校验
		// 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
		// 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
		// 3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email），
		// 4、验证app_id是否为该商户本身。上述1、2、3、4有任何一个验证不通过，则表明本次通知是异常通知，务必忽略。在上述验证通过后商户必须根据支付宝不同类型的业务通知，正确的进行不同的业务处理，并且过滤重复的通知结果数据。在支付宝的业务通知中，只有交易通知状态为TRADE_SUCCESS或TRADE_FINISHED时，支付宝才会认定为买家付款成功。
		if ("TRADE_SUCCESS".equals(params.get("trade_status")) || "TRADE_FINISHED".equals(params.get("trade_status"))) {
//			Enumeration<?> pNames = request.getParameterNames();
//			Map<String, String> param = new HashMap<String, String>();
			try {
//				while (pNames.hasMoreElements()) {
//					String pName = (String) pNames.nextElement();
//					param.put(pName, request.getParameter(pName));
//				}
			boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayUtil.ALIPAY_PUBLIC_KEY, AlipayConstants.CHARSET_UTF8);// 校验签名是否正确
				
			
				if (signVerified) {
					// TODO 验签成功后
					// 按照支付结果异步通知中的描述，对支付结果中的业务内容进行1\2\3\4二次校验，校验成功后在response中返回success，校验失败返回failure
					String orderId = params.get("out_trade_no");
					OsaProxyRecharge myRecharge = proxyRechargeService.getProxyRechargeByOrder(orderId);
					if (myRecharge == null) {
						logger.info("订单支付失败：" + orderId);
						write.write("failure");
						return;
					}
					
					boolean bCheck = false;
					double dPrice = myRecharge.getMoney();
					int gold = 0;
					OsaGamePlayer player = null;
					OsaUser agent = null;
					double fetchMoneyRate = 0;
					OsaShop goods = shopService.findShopGoodsByPrice(dPrice);
					OsaGameWorld gameWorld = null;
					if (goods != null) {
						gold = goods.getGift() + goods.getNum();
						
						agent = userService.findUserByUserName(myRecharge.getProxyName());
						
						if (agent.getRemainMoney() == null) {
							agent.setRemainMoney("0");
						}
						
						OsaProxyConfig agentConfig = proxyConfigService.findById(1);
						if (agentConfig != null && agentConfig.getOneLevel() != null) {
							fetchMoneyRate = Double.parseDouble(agentConfig.getOneLevel());
						}
						
						if (agent != null) {// && agent.getRemainMoney() >= gold在线冲值不要减money
							player = gamePlayerService.getGamePlayerByOpenId(myRecharge.getOpenId());
							if (player != null) {
								gameWorld = gameWorldService.getWorldByWorldId(player.getWorldId());
								if (gameWorld != null) {
									
									bCheck = true;
								} else {
									logger.error("没有服务器玩家::" + player.getWorldId());
								}
							} else {
								logger.error("没有找到玩家::" + myRecharge.getOpenId());
							}
						} else {
							logger.error(dPrice + ":没有找到代理::" + orderId);
						}
					} else {
						logger.error(dPrice + ":没有找到商品::" + orderId);
					}
					
					if (!bCheck) {
						logger.error("openid验证没有通过：" + JSON.toJSONString(params));
						write.write("failure");
						return;
					}
					
					int status = operatorRechargeService.recharge(player.getOpenId(), myRecharge.getTraderOrder(), dPrice, myRecharge.getMoney(), (int) (System.currentTimeMillis() / 1000), gameWorld, 1);
					if (status == 1) {
						// addPlayerMoney(player, agent, gold, dPrice, myRecharge.getTraderOrder(), (fetchMoneyRate * dPrice) / 100);
						myRecharge.setFlag(1);
						proxyRechargeService.update(myRecharge);
					} else {
						logger.error("游戏服务器验证没有通过：" + status);
						write.write("failure");
						return;
					}
					logger.info("订单支付成功：" + orderId);
					write.write("success");
				} else {
					logger.error("订单支付签名失败11：" + JSON.toJSONString(params));
					// TODO 验签失败则记录异常日志，并在response中返回failure.
					write.write("failure");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@Transactional
	public OsaProxyRecharge addPlayerMoney(OsaUser proxyUser, OsaGamePlayer gamePlayer, double money, double fetchMoney) {
		int fMoney = Integer.parseInt(proxyUser.getRemainMoney());
		
		// proxyUser.setRemainMoney("" + (fMoney - money));
		
		// userService.update(proxyUser);
		OsaProxyRecharge pay = new OsaProxyRecharge();
		pay.setProxyName(proxyUser.getUserName());
		pay.setIsProxy((byte) 0);
		pay.setMoney(money);
		pay.setName(gamePlayer.getRoleName());
		pay.setTraderOrder("" + IdGenerateUtils.makeId());
		pay.setOnlinePay(1);
		pay.setCreateTime(new Date(System.currentTimeMillis()));
		pay.setIsFetch(0);
		pay.setFetchMoney(fetchMoney);
		pay.setFlag(0);// 支付宝要这个
		pay.setOpenId(gamePlayer.getOpenId());
		proxyRechargeService.insert(pay);
		return pay;
	}
	
}
