package com.lyh.admin.controller.proxy;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.game.protocol.gm.GmInviteCodeHttpProtocol;
import com.game.protocol.gm.GmInviteCodeProtocolRequest;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.task.InviteCodeTask;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.admin.tools.encrypt.MD5;

/** 
 * ClassName:ProxyPlayerController <br/> 
 * TODO:代理玩家
 * Date:     2017年10月13日 下午3:56:22 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class ProxyPlayerController extends BaseController {
	private String KEY = "PINGANBANK_NET_B2C";
	/** 
	 * getProxyPlayerList:(). <br/> 
	 * TODO().<br/> 
	 * 代理玩家列表
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/proxy/player_list")
	public ModelAndView getProxyPlayerList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage,String startDate,String endDate,String playerId) {
		ModelAndView view = new ModelAndView("/ProxyPlayerList");
		
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
		
		Date dStartDate  = null;
		Date dEndDate = null;
		long dPlayerId = 0;
		if (!ToolUtils.isStringNull(startDate)  ){
			
			 dStartDate = ToolUtils.getStartDateOneDay(startDate);
			if (ToolUtils.isStringNull(endDate)){
				endDate = ToolUtils.getDateStringFromat(new Date(System.currentTimeMillis()));
			}
			
			dEndDate = ToolUtils.getEndDateOneDay(endDate);
			
		}else if (!ToolUtils.isStringNull(playerId) &&  ToolUtils.isNum(playerId)){
			dPlayerId = Long.parseLong(playerId);
		}
		
		List<OsaGamePlayer> list = gamePlayerService.getGamePlayersByInviteCode(sysUser.getOsaUser().getInviteCode(),dStartDate,dEndDate,dPlayerId);
		
		PageInfo<OsaGamePlayer> pageInfo = new PageInfo<OsaGamePlayer>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view;
	}
	
	
	/**
	 * checkInviteCode:(). <br/>
	 * TODO().<br/>
	 * 与客户端验证邀请码
	 * 
	 * @author lyh
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value = "/invite/code/check", method = RequestMethod.POST)
	@ResponseBody
	public ModelMap checkInviteCode(HttpSession session, HttpServletRequest req) {
		ModelMap map = new ModelMap();
		String openId = req.getParameter("openId");
		String inviteCode = req.getParameter("inviteCode");// 这邀请码是代理的
		String serverId = req.getParameter("serverId");
		String sign = req.getParameter("sign");// openId=openId&inviteCode=inviteCode&key=KEY
		

		logger.error("收到inviteCode::"+inviteCode);
		
		OsaUser oUser = userService.getUsersByInviteCode(inviteCode);
		if (oUser != null){
			OsaGamePlayer gamePlayer = gamePlayerService.getGamePlayerByOpenId(openId);
			if (gamePlayer.getInviteTime() != null && gamePlayer.getInviteTime().getTime() - System.currentTimeMillis() < 0){
				map.put("result", -2);
				logger.error("已绑定"+openId);
				return map;
			}
			if (gamePlayer != null){
				String md5 = MD5.encodeMD5("openId=" + openId + "&inviteCode=" + inviteCode + "&key=" + KEY);
				if (sign != null && sign.equals(md5)) {
					long tDays= (60*24*3600*1000);
					long time = System.currentTimeMillis() + tDays;
					if (gamePlayer.getInviteTime() == null){
						gamePlayer.setInviteTime(new Date(time));
					}else{
						gamePlayer.getInviteTime().setTime(time);
					}
					gamePlayer.setInviteCode(inviteCode);
				
					
					gamePlayerService.update(gamePlayer);
					// 与代理绑定
					map.put("openId", openId);
					map.put("inviteCode", inviteCode);
					map.put("result", 1);
					
					GmInviteCodeProtocolRequest request = new GmInviteCodeProtocolRequest();
					request.setInviteCode(inviteCode);
					request.setOpenId(openId);
					request.setServerId(serverId);
				//	InviteCodeTask.inviteCodeList.add(request);
					OsaGameWorld opGameworld = gameWorldService.getWorldByWorldId(gamePlayer.getWorldId());
					GmInviteCodeHttpProtocol resp = (GmInviteCodeHttpProtocol) PlatformToServerConnection.sendPlatformToServer(opGameworld.getIp(), opGameworld.getServerUrl(), request);
					if (resp != null && resp.getStatus() == 1){
						return map;
					}else {
						map.put("result", -2);
						logger.error("服务器连接有问题"+openId);
					}
					logger.error("收到inviteCode:成功:");
				}
			}else {
				map.put("result", -2);
				logger.error("收到inviteCode:错误2:");

				return map;
			}
		}else {
			logger.error("收到inviteCode:没有找到Invite:");
			map.put("result", -1);

			return map;
		}

			
		
		
		return map;
	}
}
  