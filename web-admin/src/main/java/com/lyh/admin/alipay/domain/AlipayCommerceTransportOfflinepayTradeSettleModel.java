package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 支付宝脱机交易结算
 *
 * @author auto create
 * @since 1.0, 2016-08-10 17:01:08
 */
public class AlipayCommerceTransportOfflinepayTradeSettleModel extends AlipayObject {

	private static final long serialVersionUID = 5847563894369678679L;

	/**
	 * 脱机交易列表
	 */
	@ApiListField("trade_list")
	@ApiField("alipay_offline_trade")
	private List<AlipayOfflineTrade> tradeList;

	public List<AlipayOfflineTrade> getTradeList() {
		return this.tradeList;
	}
	public void setTradeList(List<AlipayOfflineTrade> tradeList) {
		this.tradeList = tradeList;
	}

}
