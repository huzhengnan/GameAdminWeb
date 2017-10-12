package com.lyh.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.model.OsaFeedbackQuestion;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGmForbidmsg;
import com.lyh.admin.model.OsaGmSendMoneyPay;
import com.lyh.admin.model.OsaOperatorRecharge;
import com.lyh.admin.model.OsaRechargeLog;
import com.lyh.admin.service.OsaGmSendMoneyPayService;
import com.lyh.admin.service.OsaOperatorRechargeService;
import com.lyh.admin.service.OsaRechargeLogService;
import com.lyh.admin.tools.ShowPage;

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
	public ModelAndView payInternalAdd(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/PayInternalAdd");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result ="";
			if (result.equals("1")){
				result="操作成功";
			}else{
				result="操作失败";
			}
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
	
	
public String sendMoney(GmtSendMoneyBean gmtSendMoneyBean) {
		
		String res = "";
		// 获取账号信息
		List<String> passports = new ArrayList<String>();
		if (gmtSendMoneyBean.getType().equals("1")) { // 指定账号发放
			if (gmtSendMoneyBean.getPassports() != null) {
				String[] pps = gmtSendMoneyBean.getPassports().split(",");
				for (String pid : pps) {
					passports.add(pid);
				}
			}
			
		} else if (gmtSendMoneyBean.getType().equals("2")) { // 全部账号发放
			passports = dataUpHandleService.getPassportIdsStr(gmtSendMoneyBean.getWid() + "");
		}
		
		// 获取区服信息
		OpGameworld opGameworld = worldService.getWorldByWid(gmtSendMoneyBean.getWid());
		
		// 发放动作
		
		// 记录发放日志
		OpGmtSendmoneyLog opGmtSendmoneyLog = new OpGmtSendmoneyLog();
		opGmtSendmoneyLog.setAppid(gmtSendMoneyBean.getAppid());
		opGmtSendmoneyLog.setWorldid(gmtSendMoneyBean.getWid() + "");
		opGmtSendmoneyLog.setApplyid(Integer.parseInt(gmtSendMoneyBean.getApplyid()));
		opGmtSendmoneyLog.setMsg(gmtSendMoneyBean.getMsg());
		opGmtSendmoneyLog.setPassports(Integer.parseInt(gmtSendMoneyBean.getType()) == 1 ? gmtSendMoneyBean.getPassports() : "全服");
		opGmtSendmoneyLog.setType(Integer.parseInt(gmtSendMoneyBean.getType()));
		opGmtSendmoneyLog.setOpttime(Tools.getNowDate());
		opGmtSendmoneyLog.setOptres(res); // 发放结果
		opGmtSendmoneyLog.setUsername(gmtSendMoneyBean.getUser());
		opGmtSendmoneyLogMapper.insertSelective(opGmtSendmoneyLog);
		
		//内充
		StringBuffer failStr = new StringBuffer(); // 发送失败的账号
		int num = 0;
		for (String pid : passports) {
			try {
				GmRechargeProtocolRequest req = new GmRechargeProtocolRequest();
				req.setBillon("lyh:" + System.currentTimeMillis()); // 平台单号
				req.setExtendstr("0");
				req.setMoney(gmtSendMoneyBean.getMoney());
				req.setOpenid(pid);
				req.setSigstr(MD5.encodeMD5(req.getOpenid() + req.getBillon() + req.getMoney() + "123456"));
				req.setServerId(opGameworld.getWorldid());
				GmRechargeHttpProtocol resp = (GmRechargeHttpProtocol)PlatformToServerConnection.sendPlatformToServer(opGameworld.getIp(), opGameworld.getServerurl(), req);
				res = resp.getResult();
				//				SendReqToGame.getInstance().init(opGameworld.getIp(), Integer.parseInt(opGameworld.getServerurl()));
//				res = SendReqToGame.getInstance().sendMessage(recharge_request, opGameworld.getWorldid()).toString();
				System.out.println("发送金币：" + res + ",openid:" + pid);
				
				// 记录充值日志。
				if (res.equals("1")) {
					num++;
					OpGmtSendmoneyPay opGmtSendmoneyPay = new OpGmtSendmoneyPay();
					opGmtSendmoneyPay.setAddtime(Tools.getNowDate());
					opGmtSendmoneyPay.setAppid(gmtSendMoneyBean.getAppid());
					opGmtSendmoneyPay.setWorldid(opGameworld.getWorldid() + "");
					opGmtSendmoneyPay.setOrderid(System.currentTimeMillis() + "");
					opGmtSendmoneyPay.setMoney(Double.parseDouble(gmtSendMoneyBean.getMoney()));
					opGmtSendmoneyPay.setPassport(pid);
					opGmtSendmoneyPay.setSendid(opGmtSendmoneyLog.getDid());
					opGmtSendmoneyPayMapper.insertSelective(opGmtSendmoneyPay);
				} else {
					failStr.append(pid + ",");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				Thread.sleep(10);
			} catch (Exception e) {
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
		// 更新本次发送结果
		OpGmtSendmoneyLog obj = new OpGmtSendmoneyLog();
		obj.setDid(opGmtSendmoneyLog.getDid());
		obj.setOptres(res + ",成功发送" + num + "个");
		opGmtSendmoneyLogMapper.updateByPrimaryKeySelective(obj);
		
		return res;
	}
	
}
  