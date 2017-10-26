package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ceshi moxing
 *
 * @author auto create
 * @since 1.0, 2017-07-20 15:39:52
 */
public class AlipayKeyanClass extends AlipayObject {

	private static final long serialVersionUID = 3697261419347352713L;

	/**
	 * 1
	 */
	@ApiField("user_name")
	private String userName;

	public String getUserName() {
		return this.userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

}
