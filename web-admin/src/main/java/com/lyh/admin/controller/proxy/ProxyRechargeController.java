package com.lyh.admin.controller.proxy;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaProxyConfig;
import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:ProxyRechargeController <br/>
 * TODO:代理充值管理 Date: 2017年10月13日 下午3:55:24 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/proxy")
public class ProxyRechargeController extends BaseController {
	

	
	@RequestMapping("/recharge_sub_proxy")
	public ModelAndView rechargeSubProxy(HttpSession session, HttpServletRequest request) {
		ModelAndView view = new ModelAndView("/ProxyRechargeSubProxy");
		String id = request.getParameter("id").trim();
		
		String myName = request.getParameter("myName");
		OsaUser fatherUser = userService.findUserByUserName(myName);
		
		OsaUser user = userService.findById(Long.parseLong(id));
		if (this.isPost(request) && user != null && fatherUser != null) {
			
			String money = request.getParameter("money");
			String result = "";
			if (ToolUtils.isNum(money)) {
				int tMoney = Integer.parseInt(money);
				// 判断是不是上下级关系
				if (myName.equals(user.getFatherName()) && tMoney > 0 ) {
					// 判断钱是否足够
					int fMoney = Integer.parseInt(fatherUser.getRemainMoney());
					if (fMoney >= tMoney) {
						
						//服务器
						addAgentMoney(fatherUser, user, tMoney);
						result = "1";
					} else {
						result = "房卡不足!";
					}
				} else {
					result = "不是代理上下级关系";
				}
			} else {
				result = "请输入数字";
			}
			
			// result = executeForbid(forbidMsg, request);
			if (result.equals("1")) {
				result = "充值成功";
			}
			view.addObject("msg", result);
		}
		List<OsaGameWorld> worldList = gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		view.addObject("fatherUser", fatherUser);
		view.addObject("myUser", user);
		return view;
	}
	
	@Transactional
	public void addAgentMoney(OsaUser fatherUser, OsaUser myUser, int money) {
		int fMoney = Integer.parseInt(fatherUser.getRemainMoney());
		int uMoney = Integer.parseInt(myUser.getRemainMoney());
		fatherUser.setRemainMoney("" + (fMoney - money));
		myUser.setRemainMoney("" + (uMoney + money));
		userService.update(fatherUser);
		userService.update(myUser);
		addRechargeRecord(fatherUser, myUser, money,0);
	}
	
	
	@Transactional
	public void addPlayerMoney(OsaUser proxyUser, OsaGamePlayer gamePlayer, double money,double fetchMoney) {
		int fMoney = Integer.parseInt(proxyUser.getRemainMoney());

		proxyUser.setRemainMoney("" + (fMoney - money));

		userService.update(proxyUser);
		OsaProxyRecharge pay = new OsaProxyRecharge();
		pay.setProxyName(proxyUser.getUserName());
		pay.setIsProxy((byte) 0);
		pay.setMoney( money);
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
	
	
	public void addRechargeRecord(OsaUser fatherUser, OsaUser myUser, double money,double fetchMoney) {
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
	
	
	/** 
	 * getProxyBuyCardList:(). <br/> 
	 * TODO().<br/> 
	 * 我的购卡列表
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/buy_card_list")
	public ModelAndView getProxyBuyCardList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyBuyCardList");
		
		if (isPost(request)){
			String id = request.getParameter("id");
			OsaUser oUser = userService.findById(Long.parseLong(id));
			if (oUser != null){
				oUser.setStatus((byte)0);
				userService.update(oUser);
			}
		}
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaProxyRecharge> list = proxyRechargeService.getMyBuyCardList(sysUser.getOsaUser().getUserName());
		
		
		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
		
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view;
	}
	

	/** 
	 * getProxySellCardList:(). <br/> 
	 * TODO().<br/> 
	 * 我的售卡记录
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/sell_card_list")
	public ModelAndView getProxySellCardList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxySellCardList");
		
//		if (isPost(request)){
//			String id = request.getParameter("id");
//			OsaUser oUser = userService.findById(Long.parseLong(id));
//			if (oUser != null){
//				oUser.setStatus((byte)0);
//				userService.update(oUser);
//			}
//		}
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaProxyRecharge> list = proxyRechargeService.getMySellCardList(sysUser.getOsaUser().getUserName());
		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view;
	}
	
	/** 
	 * getProxyPlayerCardOnline:(). <br/> 
	 * TODO().<br/> 
	 * 代理玩家线上充值记录
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/player_card_online")
	public ModelAndView getProxyPlayerCardOnline(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyPlayerCardOnline");
		
//		if (isPost(request)){
//			String id = request.getParameter("id");
//			OsaUser oUser = userService.findById(Long.parseLong(id));
//			if (oUser != null){
//				oUser.setStatus((byte)0);
//				userService.update(oUser);
//			}
//		}
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaProxyRecharge> list = proxyRechargeService.getPlayerRechargeList(sysUser.getOsaUser().getUserName(), 1);
		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view;
	}
	
	
	/** 
	 * getProxyPlayerCardOffline:(). <br/> 
	 * TODO().<br/> 
	 * 玩家线下充值记录
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/player_card_offline")
	public ModelAndView getProxyPlayerCardOffline(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyPlayerCardOffline");
		
//		if (isPost(request)){
//			String id = request.getParameter("id");
//			OsaUser oUser = userService.findById(Long.parseLong(id));
//			if (oUser != null){
//				oUser.setStatus((byte)0);
//				userService.update(oUser);
//			}
//		}
		
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaProxyRecharge> list = proxyRechargeService.getPlayerRechargeList(sysUser.getOsaUser().getUserName(), 0);
		PageInfo<OsaProxyRecharge> pageInfo = new PageInfo<OsaProxyRecharge>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view; 
	}
	
	
	/** 
	 * rechargePlayerOffline:(). <br/> 
	 * TODO().<br/> 
	 * 线下,代理给玩家充值
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/recharge_player")
	public ModelAndView rechargePlayerOffline(HttpSession session, HttpServletRequest request) {
		ModelAndView view = new ModelAndView("/ProxyRechargePlayerOffline");
		String playerId = request.getParameter("id");
		
		OsaGamePlayer myGamePlayer = gamePlayerService.findById(Long.parseLong(playerId));

		OsaUser user = userService.getUsersByInviteCode(myGamePlayer.getInviteCode());
		
		if (this.isPost(request) && user != null && myGamePlayer != null) {
			String worldId = request.getParameter("worldId");
			
			String money = request.getParameter("money");
			String result = "";
			if (ToolUtils.isNum(money)) {
				int tMoney = Integer.parseInt(money);
				// 判断是不是上下级关系
				
					// 判断钱是否足够
					int fMoney = Integer.parseInt(user.getRemainMoney());
					if (fMoney >= tMoney && tMoney > 0) {
						
						OsaGameWorld gameWorld= gameWorldService.getWorldByWorldId(worldId);
						
						double fetchMoneyRate = 0;
						OsaProxyConfig  agentConfig =  proxyConfigService.findById(1);
						if (agentConfig != null && agentConfig.getOneLevel() != null){
							fetchMoneyRate = Double.parseDouble(agentConfig.getOneLevel() );
						}
						String trade = "p" + IdGenerateUtils.makeId();
						int status = operatorRechargeService.recharge(myGamePlayer.getOpenId(), trade, tMoney,tMoney, (int) (System.currentTimeMillis() / 1000), gameWorld,0);
						if (status == 1) {
							result = "1";
							addPlayerMoney(user, myGamePlayer, tMoney, (fetchMoneyRate*tMoney)/100);
						}else{
							result = "连接到服务器充值失败!"+status;
						}
						
				
						
					} else {
						result = "房卡不足!";
					}
				
			} else {
				result = "请输入数字";
			}
			
			// result = executeForbid(forbidMsg, request);
			if (result.equals("1")) {
				result = "充值成功";
			} else {
				result = "操作失败";
			}
			view.addObject("msg", result);
		}
		List<OsaGameWorld> worldList = gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		view.addObject("gamePlayer", myGamePlayer);
		view.addObject("myUser", user);
		return view;
	}
	
	
	

}
