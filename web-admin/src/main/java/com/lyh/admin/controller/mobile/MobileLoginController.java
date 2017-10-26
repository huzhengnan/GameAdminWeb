package com.lyh.admin.controller.mobile;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.admin.controller.BaseController;
import com.lyh.admin.controller.sys.MessageController;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.shiro.UsernamePasswordLoginToken;

/**
 * ClassName:MobileLoginController <br/>
 * TODO:移动登录 Date: 2017年10月24日 上午9:55:28 <br/>
 * 
 * @author lyh
 * @version
 */
@Controller
@RequestMapping("/mobile/")
public class MobileLoginController extends BaseController {
	
	@RequestMapping("/login")
	public String mobileLogin(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean rememberMe = request.getParameter("rememberMe") == null ? false : true;
		String ip = getIpAddr(request);
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.isAuthenticated()) {
			UsernamePasswordLoginToken token = new UsernamePasswordLoginToken(userName, password, rememberMe, ip, "0");
			try {
				currentUser.login(token);
				ShiroSysUser.getShiroSubject().getOsaUser().setLoginIp(ip);
				userService.update(ShiroSysUser.getShiroSubject().getOsaUser());
				// session.setAttribute("sysUser", currentUser.getPrincipal());
			} catch (AuthenticationException e) {
				String exceptionClassName = e.getMessage();
				// (String) request.getAttribute("shiroLoginFailure");
				logger.error("移动登录错误:" + exceptionClassName);
				if (exceptionClassName.equals("null")) {
					return MessageController.exitWithMsg(null, "查无此人", "登录", "/mobile/index", 3, model);
				} else if (exceptionClassName.equals("user")) {
					return MessageController.exitWithMsg(null, "查无此人!", "登录", "/mobile/index", 3, model);
				} else if (exceptionClassName.equals("password")) {
					return MessageController.exitWithMsg(null, "密码有问题!", "登录", "/mobile/index", 3, model);
				} else if (exceptionClassName.equals("status")) {
					return MessageController.exitWithMsg(null, "此用户被禁!", "登录", "/mobile/index", 3, model);
				}
			}
		}
		return "redirect:/mobile/index";
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request) {
		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser.isAuthenticated()) {
			currentUser.logout();
			request.removeAttribute("sysUser");
		}
		return "redirect:/mobile/index";
	}
	
}
