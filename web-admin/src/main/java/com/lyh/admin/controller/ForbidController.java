package com.lyh.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.game.protocol.gm.GmBlockIPHttpProtocol;
import com.game.protocol.gm.GmBlockIPProtocolRequest;
import com.game.protocol.gm.GmBlockRoleHttpProtocol;
import com.game.protocol.gm.GmBlockRoleProtocolRequest;
import com.game.protocol.gm.GmBlockSayHttpProtocol;
import com.game.protocol.gm.GmBlockSayProtocolRequest;
import com.game.protocol.gm.GmDisblockIPHttpProtocol;
import com.game.protocol.gm.GmDisblockIPProtocolRequest;
import com.game.protocol.gm.GmDisblockRoleHttpProtocol;
import com.game.protocol.gm.GmDisblockRoleProtocolRequest;
import com.game.protocol.gm.GmDisblockSayHttpProtocol;
import com.game.protocol.gm.GmDisblockSayProtocolRequest;
import com.game.protocol.gm.GmKickRoleHttpProtocol;
import com.game.protocol.gm.GmKickRoleProtocolRequest;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGmForbidmsg;
import com.lyh.admin.service.OsaGmForbidmsgService;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/** 
 * ClassName:ForbidController <br/> 
 * TODO:封禁controller
 * Date:     2017年10月11日 下午5:19:36 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/forbid")
public class ForbidController extends BaseController {
	
	@Autowired
	private OsaGmForbidmsgService gmForbidmsgService;
	

	
	@RequestMapping("/history")
	public ModelAndView getForbidHistory(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/ForbidHistroy");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		List<OsaGmForbidmsg> list = gmForbidmsgService.getGmForbidMsgList();
	
		PageInfo<OsaGmForbidmsg> pageInfo = new PageInfo<OsaGmForbidmsg>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	/** 
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 禁言
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/block_say")
	public ModelAndView forbidBlockSay(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/BlockSay");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 禁言解除
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/disblock_say")
	public ModelAndView forbidDisblockSay(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/DisblockSay");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 封禁ip
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/block_ip")
	public ModelAndView forbidBlockIp(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/BlockIp");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 解禁ip
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/disblock_ip")
	public ModelAndView forbidDisblockIp(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/DisblockIp");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 封号
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/block_role")
	public ModelAndView forbidBlockRole(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/BlockRole");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 解封角色
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/disblock_role")
	public ModelAndView forbidDisblockRole(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/DisblockRole");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * forbidBlockSay:(). <br/> 
	 * TODO().<br/> 
	 * 踢人
	 * @author lyh 
	 * @param session
	 * @param request
	 * @return 
	 */  
	@RequestMapping("/kick_role")
	public ModelAndView forbidKickRole(HttpSession session, HttpServletRequest request,OsaGmForbidmsg forbidMsg){
		ModelAndView view = new ModelAndView("/KickRole");
		if (this.isPost(request)){
//			String worldId = request.getParameter("worldId");
//			String ptype = request.getParameter("ptype");
//			String openId = request.getParameter("openId");
//			String forbidtime = request.getParameter("forbidtime");
//			String msg = request.getParameter("msg");
	
			String result = executeForbid(forbidMsg, request);
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
	 * executeForbid:(). <br/> 
	 * TODO().<br/> 
	 * 执行封禁
	 * @author lyh 
	 * @param gmtForbidBean
	 * @return 
	 */  
	public String executeForbid(OsaGmForbidmsg forbidMsg,HttpServletRequest request) {
		
		String res = "-5";
		if (forbidMsg != null) {
			// 获取区服信息
			OsaGameWorld gameWorld= gameWorldService.getWorldByWorldId(forbidMsg.getWorldId());
			
			forbidMsg.setUsername(ShiroSysUser.getShiroSubject().getOsaUser().getUserName());
			if (forbidMsg.getOpttype().equals("5050")) { // 账号禁言
				GmBlockSayProtocolRequest req = new GmBlockSayProtocolRequest();
				
				req.setTime(forbidMsg.getForbidtime());
				req.setType(forbidMsg.getPtype());
				req.setActstr(forbidMsg.getOpenId());
				req.setServerId(forbidMsg.getWorldId());

				
				GmBlockSayHttpProtocol resp = (GmBlockSayHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
				res =""+ resp.getStatus();
				forbidMsg.setOpttime(ToolUtils.getNowDate());
			//	forbidMsg.setId(IdGenerateUtils.makeId());
				
//				OpGmtForbidmsg opGmtForbidmsg = new OpGmtForbidmsg();
//				opGmtForbidmsg.setAppid(gmtForbidBean.getAppid());
//				opGmtForbidmsg.setWorldid(gmtForbidBean.getWid());
//				opGmtForbidmsg.setPtype(Integer.parseInt(gmtForbidBean.getType()));
//				opGmtForbidmsg.setPassport(gmtForbidBean.getPassport());
//				opGmtForbidmsg.setOpttime(Tools.getNowDate());
//				opGmtForbidmsg.setMsg(gmtForbidBean.getMsg());
//				opGmtForbidmsg.setOpttype(Integer.parseInt(gmtForbidBean.getAct()));
//				opGmtForbidmsg.setUsername(gmtForbidBean.getUser());
//				opGmtForbidmsg.setForbidtime(Integer.parseInt(gmtForbidBean.getTime()));
				forbidMsg.setOptres(resp.getStatus() == 1 ? "成功" : (resp.getStatus()== -1000? "链接失败" : (resp.getStatus()==-1002? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
				
			} else if (forbidMsg.getOpttype().equals("5051")) { // 账号禁言 --解封
				GmDisblockSayProtocolRequest req = new GmDisblockSayProtocolRequest();
				req.setType(forbidMsg.getPtype());
				req.setActstr(forbidMsg.getOpenId());
				req.setServerId(forbidMsg.getWorldId());

				GmDisblockSayHttpProtocol resp = (GmDisblockSayHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
				res =""+ resp.getStatus();
//				OpGmtForbidmsg opGmtForbidmsg = new OpGmtForbidmsg();
//				opGmtForbidmsg.setAppid(gmtForbidBean.getAppid());
//				opGmtForbidmsg.setWorldid(gmtForbidBean.getWid());
//				opGmtForbidmsg.setPtype(Integer.parseInt(gmtForbidBean.getType()));
//				opGmtForbidmsg.setPassport(gmtForbidBean.getPassport());
//				opGmtForbidmsg.setOpttime(Tools.getNowDate());
//				opGmtForbidmsg.setMsg(gmtForbidBean.getMsg());
//				opGmtForbidmsg.setOpttype(Integer.parseInt(gmtForbidBean.getAct()));
//				opGmtForbidmsg.setUsername(gmtForbidBean.getUser());
				forbidMsg.setOpttime(ToolUtils.getNowDate());
				//forbidMsg.setId(IdGenerateUtils.makeId());
				forbidMsg.setOptres(resp.getStatus() == 1? "成功" : (resp.getStatus() ==-1000 ? "链接失败" : (resp.getStatus() ==-1002 ? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
				
			} else if (forbidMsg.getOpttype().equals("5052")) { // IP禁止
				GmBlockIPProtocolRequest req = new GmBlockIPProtocolRequest();
				req.setIp(forbidMsg.getIp());
				req.setTime(forbidMsg.getForbidtime());
				req.setServerId(forbidMsg.getWorldId());

				GmBlockIPHttpProtocol resp = (GmBlockIPHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
				res =""+ resp.getStatus();
				forbidMsg.setOpttime(ToolUtils.getNowDate());
				//forbidMsg.setId(IdGenerateUtils.makeId());
				forbidMsg.setOptres(resp.getStatus() == 1? "成功" : (resp.getStatus() ==-1000 ? "链接失败" : (resp.getStatus() ==-1002 ? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
				
			} else if (forbidMsg.getOpttype().equals("5053")) { // IP禁言 --解封
				GmDisblockIPProtocolRequest req = new GmDisblockIPProtocolRequest();
				req.setIp(forbidMsg.getIp());
				req.setServerId(forbidMsg.getWorldId());

				GmDisblockIPHttpProtocol resp = (GmDisblockIPHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
				res =""+ resp.getStatus();
				forbidMsg.setOpttime(ToolUtils.getNowDate());
				//forbidMsg.setId(IdGenerateUtils.makeId());
				forbidMsg.setOptres(resp.getStatus() == 1? "成功" : (resp.getStatus() ==-1000 ? "链接失败" : (resp.getStatus() ==-1002 ? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
				
			} else if (forbidMsg.getOpttype().equals("5060")) { // 账号封号
				GmBlockRoleProtocolRequest req = new GmBlockRoleProtocolRequest();
				req.setType(forbidMsg.getPtype());
				req.setActstr(forbidMsg.getOpenId());
				req.setServerId(forbidMsg.getWorldId());
				GmBlockRoleHttpProtocol resp = (GmBlockRoleHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);

				res =""+ resp.getStatus();
				forbidMsg.setOpttime(ToolUtils.getNowDate());
			//	forbidMsg.setId(IdGenerateUtils.makeId());
				forbidMsg.setOptres(resp.getStatus() == 1? "成功" : (resp.getStatus() ==-1000 ? "链接失败" : (resp.getStatus() ==-1002 ? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
				
			} else if (forbidMsg.getOpttype().equals("5061")) { // 账号封号 -- 解封
				GmDisblockRoleProtocolRequest req = new GmDisblockRoleProtocolRequest();
				req.setType(forbidMsg.getPtype());
				req.setActstr(forbidMsg.getOpenId());
				req.setServerId(forbidMsg.getWorldId());
				

				GmDisblockRoleHttpProtocol resp = (GmDisblockRoleHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);
				res =""+ resp.getStatus();
				forbidMsg.setOpttime(ToolUtils.getNowDate());
				//forbidMsg.setId(IdGenerateUtils.makeId());
				forbidMsg.setOptres(resp.getStatus() == 1? "成功" : (resp.getStatus() ==-1000 ? "链接失败" : (resp.getStatus() ==-1002 ? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
				
			} else if (forbidMsg.getOpttype().equals("5070")) { // 踢人
				GmKickRoleProtocolRequest req = new GmKickRoleProtocolRequest();
				req.setType(forbidMsg.getPtype());
				req.setActstr(forbidMsg.getOpenId());
				req.setServerId(forbidMsg.getWorldId());
				GmKickRoleHttpProtocol resp = (GmKickRoleHttpProtocol)PlatformToServerConnection.sendPlatformToServer(gameWorld.getIp(), gameWorld.getServerUrl(), req);

				res =""+ resp.getStatus();
//				OpGmtForbidmsg opGmtForbidmsg = new OpGmtForbidmsg();
//				opGmtForbidmsg.setAppid(gmtForbidBean.getAppid());
//				opGmtForbidmsg.setWorldid(gmtForbidBean.getWid());
//				opGmtForbidmsg.setPtype(Integer.parseInt(gmtForbidBean.getType()));
//				opGmtForbidmsg.setPassport(gmtForbidBean.getPassport());
//				opGmtForbidmsg.setOpttime(Tools.getNowDate());
//				opGmtForbidmsg.setMsg(gmtForbidBean.getMsg());
//				opGmtForbidmsg.setOpttype(Integer.parseInt(gmtForbidBean.getAct()));
//				opGmtForbidmsg.setUsername(gmtForbidBean.getUser());
				forbidMsg.setOpttime(ToolUtils.getNowDate());
			//	forbidMsg.setId(IdGenerateUtils.makeId());
				forbidMsg.setOptres(resp.getStatus() == 1? "成功" : (resp.getStatus() ==-1000 ? "链接失败" : (resp.getStatus() ==-1002 ? "接入失败" : "失败" + resp.getStatus())));
				gmForbidmsgService.insert(forbidMsg);
			}
			
		}
		
		return res;
	}
}
  