package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 安全业务操作
 *
 * @author auto create
 * @since 1.0, 2016-03-02 10:47:05
 */
public class AlipaySecurityProdAlipaySecurityProdTestModel extends AlipayObject {

	private static final long serialVersionUID = 5376847675418567772L;

	/**
	 * ddd
	 */
	@ApiListField("cds")
	@ApiField("string")
	private List<String> cds;

	/**
	 * aaa
	 */
	@ApiField("ddd")
	private String ddd;

	public List<String> getCds() {
		return this.cds;
	}
	public void setCds(List<String> cds) {
		this.cds = cds;
	}

	public String getDdd() {
		return this.ddd;
	}
	public void setDdd(String ddd) {
		this.ddd = ddd;
	}

}
