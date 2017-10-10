package com.lyh.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lyh.admin.entity.SysUser;
import com.lyh.admin.tools.IText;

/** 
 * ClassName:IndexController <br/> 
 * TODO:
 * Date:     2017年10月5日 下午3:51:15 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class IndexController extends BaseController {
	
	
	@RequestMapping("/index")
	public String index(HttpSession session,  HttpServletRequest request,Model model){
		session.setAttribute("company", IText.COMPANY);
		logger.error("company::"+session.getAttribute("company"));
		 SysUser user =   (SysUser)session.getAttribute("sysUser");
		 
		 if (user == null){
			 model.addAttribute("page_title","登录");
			 return "/login";
		 }
		return "/index";
	}
}
  