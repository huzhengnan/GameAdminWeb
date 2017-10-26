package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * 到位的单笔订单拒绝接口
 *
 * @author auto create
 * @since 1.0, 2017-01-16 11:30:45
 */
public class AlipayDaoweiOrderRefuseModel extends AlipayObject {

	private static final long serialVersionUID = 3275551988294331344L;

	/**
	 * 到位业务订单号，全局唯一，由32位数字组成，用户在到位下单时系统生成并消息同步给商家，商户只能查自己同步到的订单号
	 */
	@ApiField("order_no")
	private String orderNo;

	/**
	 * 拒单理由，第三方商户拒绝接单时填写的拒单理由，必填，长度不超过500字符
	 */
	@ApiField("reason")
	private String reason;

	public String getOrderNo() {
		return this.orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getReason() {
		return this.reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}

}
