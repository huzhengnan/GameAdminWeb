package com.lyh.admin.controller.mobile;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaProxyConfig;
import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.model.OsaProxyRechargeFetch;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:MobileFetchMoneyController <br/>
 * TODO:移动售卡 Date: 2017年10月26日 上午10:23:38 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/mobile")
public class MobileRechargeMoneyController extends BaseController {
	/**
	 * getProxySettlementRequest:(). <br/>
	 * TODO().<br/>
	 * 售卡
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/recharge_money")
	public ModelAndView getRechargeMoney(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/mobile/MobileRechargePlayerView");
		
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		if (this.isPost(request)) {
			String playerId = request.getParameter("playerId");
			
			OsaGamePlayer myGamePlayer = gamePlayerService.findById(Long.parseLong(playerId));
			OsaUser user = null;
			if (myGamePlayer != null && !ToolUtils.isStringNull(myGamePlayer.getInviteCode()) && sysUser.getOsaUser().getInviteCode().equals(myGamePlayer.getInviteCode())){
				 user = userService.getUsersByInviteCode(myGamePlayer.getInviteCode());
			}
			
			if (myGamePlayer != null && user != null) {
				String money = request.getParameter("money");
				String result = "";
				if (!ToolUtils.isStringNull(money) && ToolUtils.isNum(money)) {
					int tMoney = Integer.parseInt(money);
					// 判断是不是上下级关系
					
					// 判断钱是否足够
					int fMoney = Integer.parseInt(user.getRemainMoney());
					if (fMoney >= tMoney && tMoney > 0) {
						
						OsaGameWorld gameWorld = gameWorldService.getWorldByWorldId(myGamePlayer.getWorldId());
						
						double fetchMoneyRate = 0;
						OsaProxyConfig agentConfig = proxyConfigService.findById(1);
						if (agentConfig != null && agentConfig.getOneLevel() != null) {
							fetchMoneyRate = Double.parseDouble(agentConfig.getOneLevel());
						}
						String trade = "p" + IdGenerateUtils.makeId();
						int status = operatorRechargeService.recharge(myGamePlayer.getOpenId(), trade, tMoney, tMoney, (int) (System.currentTimeMillis() / 1000), gameWorld, 0);
						if (status == 1) {
							result = "充值成功";
						
							addPlayerMoney(user, myGamePlayer, tMoney, (fetchMoneyRate * tMoney) / 100);
						} else {
							result = "连接到服务器充值失败!" + status;
						}
						
					} else {
						result = "房卡不足!";
					}
					
				} else {
				//	result = "请输入数字";
				}
				
				// result = executeForbid(forbidMsg, request);
			
				view.addObject("msg", result);
				view.addObject("gamePlayer", myGamePlayer);
				view.addObject("myUser", user);
			} else {
				view.addObject("msg", "没有找到此玩家!");
			}
			
		} else {
			
		}
		
		return view;
	}
	
	@Transactional
	public void addPlayerMoney(OsaUser proxyUser, OsaGamePlayer gamePlayer, double money, double fetchMoney) {
		int fMoney = Integer.parseInt(proxyUser.getRemainMoney());
		
		proxyUser.setRemainMoney("" + (fMoney - money));
		proxyUser.setTotalFetchMoney(proxyUser.getTotalFetchMoney() + fetchMoney);
		proxyUser.setRemainFetchMoney(proxyUser.getRemainFetchMoney() + fetchMoney);
		
		userService.update(proxyUser);
		OsaProxyRecharge pay = new OsaProxyRecharge();
		pay.setProxyName(proxyUser.getUserName());
		pay.setIsProxy((byte) 0);
		pay.setMoney(money);
		pay.setName(gamePlayer.getRoleName());
		pay.setTraderOrder("" + IdGenerateUtils.makeId());
		pay.setOnlinePay(0);
		pay.setCreateTime(new Date(System.currentTimeMillis()));
		pay.setIsFetch(0);
		pay.setFetchMoney(fetchMoney);
		pay.setFlag(1);
		pay.setOpenId(gamePlayer.getOpenId());
		proxyRechargeService.insert(pay);
	}
	
	public void addRechargeRecord(OsaUser fatherUser, OsaUser myUser, double money, double fetchMoney) {
		OsaProxyRecharge pay = new OsaProxyRecharge();
		pay.setProxyName(fatherUser.getUserName());
		pay.setIsProxy((byte) 1);
		pay.setMoney(money);
		pay.setName(myUser.getUserName());
		pay.setTraderOrder("" + IdGenerateUtils.makeId());
		pay.setOnlinePay(0);
		pay.setCreateTime(new Date(System.currentTimeMillis()));
		pay.setIsFetch(0);
		pay.setFetchMoney(fetchMoney);
		pay.setFlag(1);
		proxyRechargeService.insert(pay);
	}
}
