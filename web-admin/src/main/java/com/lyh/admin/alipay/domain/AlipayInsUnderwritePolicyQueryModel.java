package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * 保单查询接口
 *
 * @author auto create
 * @since 1.0, 2017-07-17 17:22:10
 */
public class AlipayInsUnderwritePolicyQueryModel extends AlipayObject {

	private static final long serialVersionUID = 2853595588991815669L;

	/**
	 * 商户生成的外部投保业务号;当保单凭证号不传时则必传.
	 */
	@ApiField("out_biz_no")
	private String outBizNo;

	/**
	 * 保单凭证号;商户生成的外部投保业务号不传时则必传.
	 */
	@ApiField("policy_no")
	private String policyNo;

	/**
	 * 产品编码;当保单凭证号不传时则必传.
	 */
	@ApiField("prod_code")
	private String prodCode;

	public String getOutBizNo() {
		return this.outBizNo;
	}
	public void setOutBizNo(String outBizNo) {
		this.outBizNo = outBizNo;
	}

	public String getPolicyNo() {
		return this.policyNo;
	}
	public void setPolicyNo(String policyNo) {
		this.policyNo = policyNo;
	}

	public String getProdCode() {
		return this.prodCode;
	}
	public void setProdCode(String prodCode) {
		this.prodCode = prodCode;
	}

}
