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
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGmForbidmsg;
import com.lyh.admin.service.OsaGmForbidmsgService;
import com.lyh.admin.tools.ShowPage;

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
	public ModelAndView getGorbidHistory(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
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
}
  