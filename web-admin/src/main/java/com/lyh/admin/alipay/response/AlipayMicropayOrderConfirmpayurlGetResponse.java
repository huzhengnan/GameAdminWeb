package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.SinglePayDetail;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ALIPAY API: alipay.micropay.order.confirmpayurl.get response.
 * 
 * @author auto create
 * @since 1.0, 2016-06-06 17:53:18
 */
public class AlipayMicropayOrderConfirmpayurlGetResponse extends AlipayResponse {

	private static final long serialVersionUID = 3447642596588239825L;

	/** 
	 * SinglePayDetail信息
	 */
	@ApiField("single_pay_detail")
	private SinglePayDetail singlePayDetail;

	public void setSinglePayDetail(SinglePayDetail singlePayDetail) {
		this.singlePayDetail = singlePayDetail;
	}
	public SinglePayDetail getSinglePayDetail( ) {
		return this.singlePayDetail;
	}

}
