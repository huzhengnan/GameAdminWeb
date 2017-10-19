package com.lyh.admin.controller.pay.apple;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
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
import com.lyh.admin.tools.encrypt.MD5;
import com.lyh.admin.tools.pay.applay.ApplePayHttpUtils;

/**
 * ClassName:AppleIAPPayController <br/>
 * Function: TODO (苹果应用内支付<IAP>). <br/>
 * 苹果AppStore线上的购买凭证验证地址是https://buy.itunes.apple.com/verifyReceipt ，测试的验证地址是：https://sandbox.itunes.apple.com/verifyReceipt Date: 2017年7月26日 上午10:12:19 <br/>
 * 
 * @author lyh
 * @version
 * @see
 */
@Controller
public class AppleIAPPayController extends BaseController {
	
	// 购买凭证验证地址
	private static final String certificateUrl = "https://buy.itunes.apple.com/verifyReceipt";
	
	// 测试的购买凭证验证地址
	private static final String certificateUrlTest = "https://sandbox.itunes.apple.com/verifyReceipt";
	
	/** 苹果支付 **/
	private static final String APPLE_KEY = "XXXXdeeeF#@@$@$!(*&^&#$WREQAPP";
	
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
	 * appleIapPay:(). <br/>
	 * TODO().<br/>
	 * 苹果IAP支付验证 服务器二次验证代码 21000 App Store不能读取你提供的JSON对象 21002 receipt-data域的数据有问题 21003 receipt无法通过验证 21004 提供的shared secret不匹配你账号中的shared secret 21005 receipt服务器当前不可用 21006
	 * receipt合法，但是订阅已过期。服务器接收到这个状态码时，receipt数据仍然会解码并一起发送 21007 receipt是Sandbox receipt，但却发送至生产系统的验证服务 21008 receipt是生产receipt，但却发送至Sandbox环境的验证服务
	 * 
	 * @author lyh
	 * @param request
	 * @param resonse
	 */
	@SuppressWarnings("unused")
	@RequestMapping(value = "/apple/pay/{serverId}/verify", method = { RequestMethod.POST })
	@ResponseBody
	public String appleIapPay(@PathVariable String serverId, HttpServletRequest request, HttpServletResponse resonse) throws Exception {
		String openId = request.getParameter("openId");
		String price = request.getParameter("fprice");// 元
		String inviteCode = request.getParameter("inviteCode");// 有就发没有就不发
		String receiptData = request.getParameter("receiptData");// 凭证
		String chooseEnv = request.getParameter("chooseEnv");// 测试=0,正式环境=1
		String sign = request.getParameter("sign");// md5大写
		JSONObject resultJson = new JSONObject();
		if (ToolUtils.isStringNull(receiptData) || ToolUtils.isStringNull(sign) || ToolUtils.isStringNull(price) || ToolUtils.isStringNull(openId)) {
			resultJson.put("status", -1);
			logger.error(openId + ":必要参数不能为空::" + price);
			return resultJson.toJSONString();
		}
		
		StringBuilder sb = new StringBuilder();
		sb.append("openId=").append(openId);
		sb.append("&fprice=").append(price);
		sb.append("&receiptData=").append(receiptData);
		sb.append("&chooseEnv=").append(chooseEnv);
		if (!ToolUtils.isStringNull(inviteCode)) {
			sb.append("&inviteCode=").append(inviteCode);
		}
		sb.append("&key=").append(APPLE_KEY);
		
		String signKey = MD5.encodeMD5(sb.toString()).toUpperCase();// 生成签名
		if (!signKey.equals(sign)) {
			
			resultJson.put("status", -2);
			logger.error(signKey + ":签名不正确::" + openId + "::" + price + ":key=" + sign);
			return resultJson.toJSONString();
		}
		String url = null;
		url = chooseEnv.equals("1") ? certificateUrl : certificateUrlTest;
		String result = ApplePayHttpUtils.sendHttpsAppleVerify(url, receiptData);
		logger.error("apple验证::" + result);
		JSONObject json = JSON.parseObject(result);
		Integer verify = json.getInteger("status");
		if (verify != null && verify == 0) {
			int gold = 0;
			double dPrice = Double.parseDouble(String.valueOf(price));
			OsaGamePlayer player = null;
			OsaUser agent = null;
			double fetchMoneyRate = 0;
			OsaShop goods = shopService.findShopGoodsByPrice(dPrice);
			
			if (goods != null) {
				gold = goods.getGift() + goods.getNum();
				if (ToolUtils.isStringNull(inviteCode)){
					agent = userService.findById(1);
				}else{
				agent = userService.getUsersByInviteCode(inviteCode);
				}
				if (agent.getRemainMoney() == null) {
					agent.setRemainMoney("0");
				}
				
				OsaProxyConfig  agentConfig =  proxyConfigService.findById(1);
				if (agentConfig != null && agentConfig.getOneLevel() != null){
					fetchMoneyRate = Double.parseDouble(agentConfig.getOneLevel() );
				}
				
				if (agent != null) {// && agent.getRemainMoney() >= gold在线冲值不要减money
					player = gamePlayerService.getGamePlayerByOpenId(openId);
					if (player != null){
					OsaGameWorld gameWorld= gameWorldService.getWorldByWorldId(player.getWorldId());
					if (gameWorld != null) {
					
						
							//
					
							String trade = String.valueOf(receiptData);
							int status = operatorRechargeService.recharge(player.getOpenId(), trade,dPrice,gold, (int) (System.currentTimeMillis() / 1000), gameWorld,1);
							if (status == 1) {
								addPlayerMoney( agent, player,gold, (fetchMoneyRate * dPrice) / 100);
								resultJson.put("status", verify);
								logger.error("返回结果通知::成功" + verify);
							} else {
								resultJson.put("status", verify);
								logger.error("返回结果通知::没收连上服务器" + verify);
							}
						} else {
							resultJson.put("status", verify);
							logger.error("返回结果通知::玩家不存在" + verify);
						}
					} else {
						resultJson.put("status", verify);
						logger.error("返回结果通知::服务器不存在" + verify);
					}
				} else {
					resultJson.put("status", verify);
					logger.error("返回结果通知::玩代理不能充值" + verify);
				}
			} else {
				resultJson.put("status", verify);
				logger.error(dPrice + ":返回结果通知::玩商品不能充值" + verify);
			}
			
		} else {
			
			resultJson.put("status", verify);
			logger.error("返回结果通知::签名失败" + verify);
			
		}
		
		return resultJson.toJSONString();
	}
	
	@Transactional
	public void addPlayerMoney(OsaUser proxyUser, OsaGamePlayer gamePlayer, double money,double fetchMoney) {
		int fMoney = Integer.parseInt(proxyUser.getRemainMoney());

		//proxyUser.setRemainMoney("" + (fMoney - money));

	//	userService.update(proxyUser);
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
		pay.setFlag(1);//支付宝要这个
		pay.setOpenId(gamePlayer.getOpenId());
		proxyRechargeService.insert(pay);
	}
	
	
}
