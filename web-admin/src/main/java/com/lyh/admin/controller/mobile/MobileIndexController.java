package com.lyh.admin.controller.mobile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.tools.IText;

/** 
 * ClassName:IndexController <br/> 
 * TODO:
 * Date:     2017年10月24日 下午3:36:06 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/mobile")
public class MobileIndexController extends BaseController {
	
	@RequestMapping("/index")
	public ModelAndView mobileIndex(HttpSession session, HttpServletRequest request, Model model) {
		ModelAndView view = new ModelAndView("/mobile/index");
		session.setAttribute("company", IText.COMPANY);
		 SysUser user =  ShiroSysUser.getShiroSubject();
		if (user == null){
			view.setViewName("/mobile/MobileLogin");
		}else {
			
		}
		return view;
	}
}
  