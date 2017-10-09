package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.CustomReportCondition;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ALIPAY API: koubei.marketing.data.customreport.detail.query response.
 * 
 * @author auto create
 * @since 1.0, 2016-11-17 11:58:23
 */
public class KoubeiMarketingDataCustomreportDetailQueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 7135222968361223118L;

	/** 
	 * 自定义报表规则条件的详细信息
	 */
	@ApiField("report_condition_info")
	private CustomReportCondition reportConditionInfo;

	public void setReportConditionInfo(CustomReportCondition reportConditionInfo) {
		this.reportConditionInfo = reportConditionInfo;
	}
	public CustomReportCondition getReportConditionInfo( ) {
		return this.reportConditionInfo;
	}

}
