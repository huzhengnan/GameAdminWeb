package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 仪表盘取消授权
 *
 * @author auto create
 * @since 1.0, 2017-01-18 22:20:19
 */
public class AlipayMarketingDataDashboardCancelModel extends AlipayObject {

	private static final long serialVersionUID = 8619631849665724699L;

	/**
	 * 批量取消仪表盘授权
	 */
	@ApiListField("dashboard_ids")
	@ApiField("string")
	private List<String> dashboardIds;

	public List<String> getDashboardIds() {
		return this.dashboardIds;
	}
	public void setDashboardIds(List<String> dashboardIds) {
		this.dashboardIds = dashboardIds;
	}

}
