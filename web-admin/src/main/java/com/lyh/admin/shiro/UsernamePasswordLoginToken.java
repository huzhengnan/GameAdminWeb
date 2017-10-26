package com.lyh.admin.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * ClassName:UsernamePasswordUsertypeToken <br/>
 * TODO: Date: 2017年10月24日 下午4:48:27 <br/>
 * 
 * @author lyh
 * @version
 */
public class UsernamePasswordLoginToken extends UsernamePasswordToken {
	
	/****/
	private static final long serialVersionUID = 6942358544210621656L;

	
	private String loginType;
	
	public UsernamePasswordLoginToken(String username, String password, boolean rememberMe, String host, String loginType) {
		super(username, password, rememberMe, host);
		this.loginType = loginType;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	
}
