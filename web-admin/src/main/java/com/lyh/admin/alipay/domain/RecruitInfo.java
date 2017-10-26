package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

import java.util.Date;

/**
 * 招商信息
 *
 * @author auto create
 * @since 1.0, 2017-04-20 16:40:53
 */
public class RecruitInfo extends AlipayObject {

	private static final long serialVersionUID = 4197912332865531738L;

	/**
	 * 招商结束时间
	 */
	@ApiField("end_time")
	private Date endTime;

	/**
	 * 是否参与门店参与了招商
	 */
	@ApiField("exclude_constraint_shops")
	private Boolean excludeConstraintShops;

	/**
	 * 招商方案id
	 */
	@ApiField("plan_id")
	private String planId;

	/**
	 * 招商开始时间
	 */
	@ApiField("start_time")
	private Date startTime;

	/**
	 * 招商状态
	 */
	@ApiField("status")
	private String status;

	public Date getEndTime() {
		return this.endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Boolean getExcludeConstraintShops() {
		return this.excludeConstraintShops;
	}
	public void setExcludeConstraintShops(Boolean excludeConstraintShops) {
		this.excludeConstraintShops = excludeConstraintShops;
	}

	public String getPlanId() {
		return this.planId;
	}
	public void setPlanId(String planId) {
		this.planId = planId;
	}

	public Date getStartTime() {
		return this.startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public String getStatus() {
		return this.status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
