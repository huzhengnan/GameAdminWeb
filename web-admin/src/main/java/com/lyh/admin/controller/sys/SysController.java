package com.lyh.admin.controller.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lyh.admin.controller.BaseController;

/** 
 * ClassName:SysController <br/> 
 * TODO:
 * Date:     2017年10月6日 上午9:45:57 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class SysController extends BaseController {
	
	@RequestMapping("/header")
	public String getHeader(){
		return "/sys/header";
	}
	
	
	@RequestMapping("/simple_header")
	public String getSimpleHeader(){
		return "/sys/simple_header";
	}
	
}
  