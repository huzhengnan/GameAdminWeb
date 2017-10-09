package com.lyh.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lyh.admin.entity.SysUser;

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
	public String index(HttpSession session,  HttpServletRequest request){
		 SysUser user =   (SysUser)session.getAttribute("sysUser");
		 if (user == null){
			 return "login";
		 }
		return "/index";
	}
}
  