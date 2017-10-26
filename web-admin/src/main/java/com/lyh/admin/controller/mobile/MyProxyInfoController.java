package com.lyh.admin.controller.mobile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.admin.controller.BaseController;
import com.lyh.admin.entity.MobileUser;
import com.lyh.admin.entity.ShiroSysUser;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.properites.WebConfig;

/** 
 * ClassName:MyProxyInfoController <br/> 
 * TODO:代理信息
 * Date:     2017年10月24日 下午3:41:37 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
@RequestMapping("/mobile")
public class MyProxyInfoController extends BaseController {
	
	@RequestMapping("/my_info")
	public ModelAndView mobileLogin(HttpSession session, HttpServletRequest request, Model model) {
		ModelAndView view = new ModelAndView("/mobile/MyInfo");
		
		SysUser sysUser =ShiroSysUser.getShiroSubject();
		
		int count = gamePlayerService.getGamePlayerNumsByInviteCode(sysUser.getOsaUser().getInviteCode());
		sysUser.setPlayerNum(count);
		view.addObject("channel", WebConfig.CHANNEL);
		//view.addObject("user_info",sysUser);
	//	if (isPost(request)){
			
//			String name = request.getParameter("name");
//			String password = request.getParameter("password");
//			OsaUser user = userService.findUserByUserName(name);
//			if (user == null){
//				return MessageController.exitWithMsg(null, "不存在引用户!", "登录", "/mobile/login", 3);
//			}else if (!user.getPassword().equals(password)){
//				return MessageController.exitWithMsg(null, "密码不正确!", "登录", "/mobile/login", 3);
//			}
			
		//	session.setAttribute("user", user);
			

		//}
		return view;
	}
}
  