package com.lyh.admin.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * <p>
 * Title: CustomFormAuthenticationFilter
 * </p>
 * <p>
 * Description:自定义FormAuthenticationFilter，认证之前实现 验证码校验
 * </p>
 * <p>
 * Company: www.itcast.com
 * </p>
 * 
 * @author
 * @date 2015-3-25下午4:53:15
 * @version 1.0
 */
public class MyFormAuthenticationFilter extends FormAuthenticationFilter {
	
	/**
	 * 
	 * logger日志
	 * 
	 */
	
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * 
	 * 序列化id
	 * 
	 */
	
	private static final long serialVersionUID = -2271706136984114038L;
	
	/**
	 * 
	 * 登录类型
	 * 
	 */
	
	public static final String DEFAULT_LOGINTYPE_PARAM = "loginType";
	
	private String loginTypeParam = DEFAULT_LOGINTYPE_PARAM;
	
	// 原FormAuthenticationFilter的认证方法
	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
		// 在这里进行验证码的校验
		
		// 从session获取正确验证码
		// HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		// HttpSession session =httpServletRequest.getSession();
		// //取出session的验证码（正确的验证码）
		// String validateCode = (String) session.getAttribute("validateCode");
		//
		// //取出页面的验证码
		// //输入的验证和session中的验证进行对比
		// String randomcode = httpServletRequest.getParameter("verify_code");
		// if(randomcode!=null && validateCode!=null && !randomcode.equals(validateCode)){
		// //如果校验失败，将验证码错误失败信息，通过shiroLoginFailure设置到request中
		// httpServletRequest.setAttribute("shiroLoginFailure", "randomCodeError");
		// //拒绝访问，不再校验账号和密码
		// return true;
		// }
		return super.onAccessDenied(request, response);
	}
	  @Override
	protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) {
		
		String username = getUsername(request);
		
		String password = getPassword(request);
		
		String loginTypeParam = getLoginType(request);
		
		logger.debug("createToken username:{},password:{},loginType:{" + loginTypeParam + "} ...", username, password);
		
		if (password == null) {
			
			password = "";
			
		}
		
		String host = getRemoteAddr((HttpServletRequest) request);
		
		boolean rememberMe = isRememberMe(request);
		
		return new UsernamePasswordLoginToken(username, password, rememberMe, host, loginTypeParam);
		
	}
	
	public void setLoginTypeParam(String loginTypeParam) {
		
		this.loginTypeParam = loginTypeParam;
		
	}
	
	public String getLoginTypeParam() {
		
		return loginTypeParam;
		
	}
	
	protected String getLoginType(ServletRequest request) {
		
		return WebUtils.getCleanParam(request, getLoginTypeParam());
		
	}
	
	/**
	 * 
	 * 获得用户远程地址
	 * 
	 */
	
	public static String getRemoteAddr(HttpServletRequest request) {
		
		String remoteAddr = request.getHeader("X-Real-IP");
		
		if (StringUtils.isNotBlank(remoteAddr)) {
			
			remoteAddr = request.getHeader("X-Forwarded-For");
			
		} else if (StringUtils.isNotBlank(remoteAddr)) {
			
			remoteAddr = request.getHeader("Proxy-Client-IP");
			
		} else if (StringUtils.isNotBlank(remoteAddr)) {
			
			remoteAddr = request.getHeader("WL-Proxy-Client-IP");
			
		}
		
		return remoteAddr != null ? remoteAddr : request.getRemoteAddr();
		
	}
	
}
