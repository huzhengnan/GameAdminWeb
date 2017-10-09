package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.AlipayOfflinePayMasterKey;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: alipay.commerce.transport.offlinepay.key.query response.
 * 
 * @author auto create
 * @since 1.0, 2017-05-20 21:41:51
 */
public class AlipayCommerceTransportOfflinepayKeyQueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 3138349323479224844L;

	/** 
	 * 支付宝脱机交易公钥列表。列表中每一项为一个有效的支付宝公钥信息, 其中id字段表示支付宝公钥id。
	 */
	@ApiListField("keys")
	@ApiField("alipay_offline_pay_master_key")
	private List<AlipayOfflinePayMasterKey> keys;

	public void setKeys(List<AlipayOfflinePayMasterKey> keys) {
		this.keys = keys;
	}
	public List<AlipayOfflinePayMasterKey> getKeys( ) {
		return this.keys;
	}

}
