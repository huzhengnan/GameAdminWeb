package com.lyh.admin.controller.proxy;

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
import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.service.OsaUserService;
import com.lyh.admin.tools.ShowPage;

/**
 * ClassName:ProxyController <br/>
 * TODO:代理处理 Date: 2017年10月13日 下午3:54:05 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
public class ProxyController extends BaseController {
	
	@Autowired
	private OsaUserService userService;
	
	/**
	 * getProxyMyList:(). <br/>
	 * TODO().<br/>
	 * 我的代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/proxy/my_list")
	public ModelAndView getProxyMyList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyMyList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		SysUser sysUser = ShiroSysUser.getShiroSubject();
		
		List<OsaUser> list = userService.getUsersByFatherName(sysUser.getOsaUser().getUserName());
		
		PageInfo<OsaUser> pageInfo = new PageInfo<OsaUser>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("name", sysUser.getOsaUser().getUserName());
		return view;
	}
	
	/**
	 * getProxySubProxy:(). <br/>
	 * TODO().<br/>
	 * 查看我的下级代理
	 * 
	 * @author lyh
	 * @param session
	 * @param request
	 * @param curPage
	 * @return
	 */
	@RequestMapping("/proxy/see_sub_proxyt")
	public ModelAndView getProxySubProxy(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyMyList");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser sysUser =ShiroSysUser.getShiroSubject();
		String id = request.getParameter("id");
		
		OsaUser user = userService.findById(Long.parseLong(id));
		if (user != null) {
			List<OsaUser> list = userService.getUsersByFatherName(user.getUserName());
			
			PageInfo<OsaUser> pageInfo = new PageInfo<OsaUser>(list);
			String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
			view.addObject("list", list);
			view.addObject("pages", pages);
		}
		return view;
	}
	
	/** 
	 * getProxyDel:(). <br/> 
	 * TODO().<br/> 
	 * 删除代理
	 * @author lyh 
	 * @param session
	 * @param request
	 * @param curPage
	 * @return 
	 */  
	@RequestMapping("/proxy/proxy_del")
	public ModelAndView getProxyDel(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage) {
		ModelAndView view = new ModelAndView("/ProxyMyList");
		
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
		
		List<OsaUser> list = userService.getUsersByFatherName(sysUser.getOsaUser().getUserName());
		
		PageInfo<OsaUser> pageInfo = new PageInfo<OsaUser>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		view.addObject("name", sysUser.getOsaUser().getUserName());
		return view;
	}
	
	
}
