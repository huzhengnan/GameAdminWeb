package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ALIPAY API: alipay.marketing.campaign.drawcamp.create response.
 * 
 * @author auto create
 * @since 1.0, 2017-03-23 14:22:24
 */
public class AlipayMarketingCampaignDrawcampCreateResponse extends AlipayResponse {

	private static final long serialVersionUID = 5792416437525189888L;

	/** 
	 * 抽奖活动id
	 */
	@ApiField("camp_id")
	private String campId;

	public void setCampId(String campId) {
		this.campId = campId;
	}
	public String getCampId( ) {
		return this.campId;
	}

}
