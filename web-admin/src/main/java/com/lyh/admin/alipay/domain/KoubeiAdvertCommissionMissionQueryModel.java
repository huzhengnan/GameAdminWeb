package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 标的分佣查询
 *
 * @author auto create
 * @since 1.0, 2017-04-11 14:05:02
 */
public class KoubeiAdvertCommissionMissionQueryModel extends AlipayObject {

	private static final long serialVersionUID = 4862689157651787731L;

	/**
	 * 主键ID
	 */
	@ApiListField("identify_list")
	@ApiField("string")
	private List<String> identifyList;

	/**
	 * 主键类型
activity_id：运营活动ID
voucher：商品ID
mission：分佣任务ID
	 */
	@ApiField("identify_type")
	private String identifyType;

	public List<String> getIdentifyList() {
		return this.identifyList;
	}
	public void setIdentifyList(List<String> identifyList) {
		this.identifyList = identifyList;
	}

	public String getIdentifyType() {
		return this.identifyType;
	}
	public void setIdentifyType(String identifyType) {
		this.identifyType = identifyType;
	}

}
