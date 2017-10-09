package com.lyh.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lyh.admin.tools.validate.RandomValidateCode;

/** 
 * ClassName:ValidateCodeController <br/> 
 * TODO:验证码
 * Date:     2017年10月5日 下午2:26:22 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class ValidateCodeController extends BaseController {
	

	@RequestMapping("/validate")
	public void getValidateCode(HttpSession session, HttpServletRequest request, HttpServletResponse response){
		response.setContentType("image/jpeg");// 设置相应类型,告诉浏览器输出的内容为图片
		response.setHeader("Pragma", "No-cache");// 设置响应头信息，告诉浏览器不要缓存此内容
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Set-Cookie", "name=value; HttpOnly");// 设置HttpOnly属性,防止Xss攻击
		response.setDateHeader("Expire", 0);
		RandomValidateCode randomValidateCode = new RandomValidateCode();
		try {
			randomValidateCode.getRandcode(request, response);// 输出图片方法
		} catch (Exception e) {
			logger.error("验证码有错误");
			e.printStackTrace();
		}
	}
}
  