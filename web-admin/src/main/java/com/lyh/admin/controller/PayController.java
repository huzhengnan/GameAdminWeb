package com.lyh.admin.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.game.protocol.gm.GmRechargeHttpProtocol;
import com.game.protocol.gm.GmRechargeProtocolRequest;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGmForbidmsg;
import com.lyh.admin.model.OsaGmSendMoneyPay;
import com.lyh.admin.model.OsaOperatorRecharge;
import com.lyh.admin.service.OsaGamePlayerService;
import com.lyh.admin.service.OsaGmSendMoneyPayService;
import com.lyh.admin.service.OsaOperatorRechargeService;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.admin.tools.encrypt.MD5;

/** 
 * ClassName:PayController <br/> 
 * TODO:游戏充值记录等
 * Date:     2017年10月12日 下午4:08:16 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class PayController extends BaseController {
	
	@Autowired
	private OsaGmSendMoneyPayService  sendMoneyPayService;
	
	@Autowired
	private OsaOperatorRechargeService  operatorRechargeService;
	@Autowired
	private OsaGamePlayerService gamePlayerService;
	/** 
	 * getPayInternalList:(). <br/> 
	 * TODO().<br/> 
	 * 内充充值记录
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/pay/internal_list")
	public ModelAndView getPayInternalList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/PayInternal");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaGmSendMoneyPay> list = sendMoneyPayService.getSendMoneyPayList();
		PageInfo<OsaGmSendMoneyPay> pageInfo = new PageInfo<OsaGmSendMoneyPay>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	
	

	/** 
	 * payInternalAdd:(). <br/> 
	 * TODO().<br/> 
	 * 内充发放
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param forbidMsg
	 * @return 
	 */  
	@RequestMapping("/pay/internal_add")
	public ModelAndView payInternalAdd(HttpSession session, HttpServletRequest request){
		ModelAndView view = new ModelAndView("/PayInternalAdd");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
			String result = sendMoney(request);
//			if (result.equals("1")){
//				result="操作成功";
//			}else{
//				result="操作失败";
//			}
			view.addObject("msg", result);
		}
		List<OsaGameWorld> worldList =  gameWorldService.getWorldList(1);
		view.addObject("worldList", worldList);
		return view;
	}
	/** 
	 * getPayPlayerList:(). <br/> 
	 * TODO().<br/> 
	 * 玩家充值记录
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/pay/player_list")
	public ModelAndView getPayPlayerList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/PayPlayerList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaOperatorRecharge> list = operatorRechargeService.getOperatorRechargeList();
		double totalPay = operatorRechargeService.getSumTotalPay();
		PageInfo<OsaOperatorRecharge> pageInfo = new PageInfo<OsaOperatorRecharge>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("totalPay", totalPay);
		return view;
	}
	
	
/** 
 * sendMoney:(). <br/> 
 * TODO().<br/> 
 * 发放内充
 * @author lyh 
 * @param request
 * @return 
 */  
public String sendMoney(HttpServletRequest request) {
		
	String  worldId = request.getParameter("worldId");
	int ptype =  Integer.parseInt(request.getParameter("ptype"));
	String openIds = request.getParameter("openId");
	double money = Double.parseDouble(request.getParameter("money"));
	String msg =  request.getParameter("msg");
		// 获取账号信息
		List<String> passports = new ArrayList<String>();
		if (ptype == 1) { // 指定账号发放
			if (!ToolUtils.isStringNull(openIds)) {
				String[] pps = ToolUtils.split(openIds, ",");
				for (String pid : pps) {
					passports.add(pid);
				}
			}
			
		} else if (ptype == 2) { // 全部账号发放
			List<OsaGamePlayer> list = gamePlayerService.getGamePlayerList(0, null);
			for (OsaGamePlayer player : list){
				passports.add(player.getOpenId());
			}
		}
		
		// 获取区服信息

		OsaGameWorld gameWorld =	gameWorldService.getWorldByWorldId(worldId);
		
		// 发放动作
		
		// 记录发放日志

		
		//内充
		StringBuffer failStr = new StringBuffer(); // 发送失败的账号
		String res = "";
		for (String pid : passports) {
			try {
				GmRechargeProtocolRequest req = new GmRechargeProtocolRequest();
				req.setBillon("lyh:" +IdGenerateUtils.makeId()); // 平台单号
				req.setExtendstr("0");
				req.setMoney(""+money);
				req.setOpenid(pid);
				req.setSigstr(MD5.encodeMD5(req.getOpenid() + req.getBillon() + req.getMoney() + "123456"));
				req.setServerId(worldId);
				GmRechargeHttpProtocol resp = (GmRechargeHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
				res = resp.getResult();
				// 记录充值日志。
				if (res.equals("1")) {

					OsaGmSendMoneyPay opGmtSendmoneyPay = new OsaGmSendMoneyPay();
					opGmtSendmoneyPay.setAddTime(new Date(System.currentTimeMillis()));
					opGmtSendmoneyPay.setAppId(gameWorld.getAppId());
					opGmtSendmoneyPay.setWorldId(gameWorld.getWorldId());
					opGmtSendmoneyPay.setMoney(money);
				//	opGmtSendmoneyPay.setId(IdGenerateUtils.makeId());
					opGmtSendmoneyPay.setOpenId(pid);
					opGmtSendmoneyPay.setSendName(ShiroSysUser.getShiroSubject().getOsaUser().getUserName());
					sendMoneyPayService.insert(opGmtSendmoneyPay);
				} else {
					failStr.append(pid + ",");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	
		}
		// 发送失败的账号
		String fails = failStr.toString();
		if (fails != null && fails.length() > 0) {
			fails = fails.substring(0, fails.length() - 1);
			res = "失败账户：" + fails;
		} else {
			res = "ok";
		}

		
		return res;
	}
	
}
  