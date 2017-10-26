package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.CustomerEntity;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: alipay.zdataassets.metadata response.
 * 
 * @author auto create
 * @since 1.0, 2017-04-26 15:12:06
 */
public class AlipayZdataassetsMetadataResponse extends AlipayResponse {

	private static final long serialVersionUID = 5233661663177736772L;

	/** 
	 * 用户标签集合
	 */
	@ApiListField("result")
	@ApiField("customer_entity")
	private List<CustomerEntity> result;

	public void setResult(List<CustomerEntity> result) {
		this.result = result;
	}
	public List<CustomerEntity> getResult( ) {
		return this.result;
	}

}
