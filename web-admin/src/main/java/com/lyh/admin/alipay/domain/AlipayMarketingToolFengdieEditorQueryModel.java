package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * 唤起凤蝶H5编辑器
 *
 * @author auto create
 * @since 1.0, 2017-04-10 10:25:08
 */
public class AlipayMarketingToolFengdieEditorQueryModel extends AlipayObject {

	private static final long serialVersionUID = 7473192195987175579L;

	/**
	 * 凤蝶H5应用唯一id，通过alipay.marketing.tool.fengdie.activity.create接口时自动生成
	 */
	@ApiField("activity_id")
	private Long activityId;

	/**
	 * 在凤蝶编辑器中点击“发布”按钮后，如果发布成功则跳转到该地址
	 */
	@ApiField("redirect_url")
	private String redirectUrl;

	public Long getActivityId() {
		return this.activityId;
	}
	public void setActivityId(Long activityId) {
		this.activityId = activityId;
	}

	public String getRedirectUrl() {
		return this.redirectUrl;
	}
	public void setRedirectUrl(String redirectUrl) {
		this.redirectUrl = redirectUrl;
	}

}