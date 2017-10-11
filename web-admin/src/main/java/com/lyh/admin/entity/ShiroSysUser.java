package com.lyh.admin.entity;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/** 
 * ClassName:ShiroSysUser <br/> 
 * TODO:验证过的用户
 * Date:     2017年10月11日 上午11:07:00 <br/> 
 * @author   lyh 
 * @version    
 */
public class ShiroSysUser {
	private static Logger logger = LoggerFactory.getLogger(ShiroSysUser.class);
	/** 
	 * getShiroSubject:(). <br/> 
	 * TODO().<br/> 
	 * 获取验证过的SysUser;
	 * @author lyh 
	 * @return 
	 */  
	public  static SysUser getShiroSubject(){
		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser != null && currentUser.isAuthenticated()){
			return (SysUser)currentUser.getPrincipal();	
		}
		logger.error("shiro为空");
		return  null;
	}
}
  