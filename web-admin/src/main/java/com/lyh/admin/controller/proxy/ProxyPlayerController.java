package com.lyh.admin.controller.proxy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.lyh.admin.tools.ShowPage;

/** 
 * ClassName:ProxyPlayerController <br/> 
 * TODO:代理玩家
 * Date:     2017年10月13日 下午3:56:22 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/proxy")
public class ProxyPlayerController extends BaseController {
	
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
	@RequestMapping("/player_list")
	public ModelAndView getProxyPlayerList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
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
		List<OsaGamePlayer> list = gamePlayerService.getGamePlayersByInviteCode(sysUser.getOsaUser().getInviteCode());
		PageInfo<OsaGamePlayer> pageInfo = new PageInfo<OsaGamePlayer>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);

		return view;
	}
}
  