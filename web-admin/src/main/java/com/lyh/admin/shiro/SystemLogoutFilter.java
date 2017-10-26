package com.lyh.admin.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;

/** 
 * ClassName:SystemLogoutFilter <br/> 
 * TODO:
 * Date:     2017年10月26日 下午5:02:32 <br/> 
 * @author   lyh 
 * @version    
 */
public class SystemLogoutFilter extends LogoutFilter {

	@Override
	protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//在这里执行退出系统前需要清空的数据
		Subject subject = getSubject(request, response);

		        String redirectUrl = getRedirectUrl(request, response, subject);

		        try {

		            subject.logout();
		            request.removeAttribute("sysUser");
		        } catch (SessionException ise) {

		           ise.printStackTrace();

		        }

		        issueRedirect(request, response, redirectUrl);

		//返回false表示不执行后续的过滤器，直接返回跳转到登录页面

		        return false;
	}
	
}
  