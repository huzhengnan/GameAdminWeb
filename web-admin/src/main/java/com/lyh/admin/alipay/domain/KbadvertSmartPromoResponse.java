package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * 智能营销信息
 *
 * @author auto create
 * @since 1.0, 2017-03-29 16:53:54
 */
public class KbadvertSmartPromoResponse extends AlipayObject {

	private static final long serialVersionUID = 3749564864934441824L;

	/**
	 * 智能营销分组ID
	 */
	@ApiField("group_id")
	private String groupId;

	/**
	 * 智能营销方案ID
	 */
	@ApiField("plan_id")
	private String planId;

	public String getGroupId() {
		return this.groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	public String getPlanId() {
		return this.planId;
	}
	public void setPlanId(String planId) {
		this.planId = planId;
	}

}
