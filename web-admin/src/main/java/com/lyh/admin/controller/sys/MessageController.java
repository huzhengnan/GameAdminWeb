package com.lyh.admin.controller.sys;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.admin.entity.SysMenu;
import com.lyh.admin.entity.SysUser;
import com.lyh.admin.tools.ToolUtils;

/**
 * ClassName:Commons <br/>
 * TODO:msg,error Date: 2017年10月6日 上午11:19:02 <br/>
 * 
 * @author lyh
 * @version
 */

public class MessageController {
	
	/**
	 * exitWithMsg:(). <br/>
	 * TODO().<br/>
	 * 显示信息 msg
	 * 
	 * @author lyh
	 * @param sysUser
	 * @param msg
	 * @param forwardUrl
	 * @param second
	 * @param model
	 * @return
	 */
	public static String exitWithMsg(SysUser sysUser, String msg, String forward_title,String forwardUrl, int second, Model model) {
		
		String temp[] = ToolUtils.split(forwardUrl, "?");
		String file_url = temp[0];
		if (file_url.charAt(0) != '/') {
			file_url = '/' + file_url;
			forwardUrl = '/' + forwardUrl;
		}
		
		if (forward_title == null){
			forward_title = "首页";
		}

		if (sysUser != null) {
			SysMenu menu = sysUser.getMenuMap().get(file_url);
			
			if (menu != null) {
				forward_title = menu.getMenuUrl().getMenuName();
			}
		}
		
		if (!ToolUtils.isStringNull(forwardUrl)) {
			
//			setTimeout(function() {
//				alert('成功');
//			}, 3000);
			
			msg += "<script type=\"text/javascript\" >"
				+ "setTimeout( function() "+"{window.location.href ='${ctxPage}'" + forwardUrl + ";}\", " + (second * 1000) + 
				
				");</script>";
		}
		model.addAttribute("page_title", "提示信息");
		model.addAttribute("msg", msg);
		model.addAttribute("forward_url", forwardUrl);
		model.addAttribute("forward_title", forward_title);
		
		return "/sys/message";
	}
	
	public static ModelAndView exitWithMsg(SysUser sysUser, String msg, String forward_title,String forwardUrl, int second) {
		ModelAndView view = new ModelAndView("/sys/message");
		String temp[] = ToolUtils.split(forwardUrl, "?");
		String file_url = temp[0];
		if (file_url.charAt(0) != '/') {
			file_url = '/' + file_url;
			forwardUrl = '/' + forwardUrl;
		}
		
		if (forward_title == null){
			forward_title = "首页";
		}

		if (sysUser != null) {
			SysMenu menu = sysUser.getMenuMap().get(file_url);
			
			if (menu != null) {
				forward_title = menu.getMenuUrl().getMenuName();
			}
			
		}
		if (!ToolUtils.isStringNull(forwardUrl)) {
			//msg += "<script type=\"text/javascript\">setTimeout(\"window.location.href = ${ctxPage}" + forwardUrl + "+;\", " + (second * 1000) + ");</script>";
			msg += "<script type=\"text/javascript\" >"
				+ "setTimeout( function() "+"{window.location.href ='${ctxPage}'" + forwardUrl + ";}\", " + (second * 1000) + 
				
				");</script>";
		}
		view.addObject("page_title", "提示信息");
		view.addObject("msg", msg);
		view.addObject("forward_url", forwardUrl);
		view.addObject("forward_title", forward_title);
		
		return view;
	}
}
