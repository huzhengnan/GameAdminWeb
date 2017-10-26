package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.AlipayContract;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ALIPAY API: alipay.user.contract.get response.
 * 
 * @author auto create
 * @since 1.0, 2016-06-06 20:23:18
 */
public class AlipayUserContractGetResponse extends AlipayResponse {

	private static final long serialVersionUID = 6789583115972784168L;

	/** 
	 * 支付宝用户订购信息
	 */
	@ApiField("alipay_contract")
	private AlipayContract alipayContract;

	public void setAlipayContract(AlipayContract alipayContract) {
		this.alipayContract = alipayContract;
	}
	public AlipayContract getAlipayContract( ) {
		return this.alipayContract;
	}

}
