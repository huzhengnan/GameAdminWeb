package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 人群数量查询
 *
 * @author auto create
 * @since 1.0, 2017-07-14 15:10:43
 */
public class AlipayOpenPublicGroupCrowdQueryModel extends AlipayObject {

	private static final long serialVersionUID = 7193688645698525167L;

	/**
	 * 用户分组的规则项列表，规则项之间元素是与的逻辑，每个规则项内部用多个值表示或的逻辑
	 */
	@ApiListField("label_rule")
	@ApiField("complex_label_rule")
	private List<ComplexLabelRule> labelRule;

	public List<ComplexLabelRule> getLabelRule() {
		return this.labelRule;
	}
	public void setLabelRule(List<ComplexLabelRule> labelRule) {
		this.labelRule = labelRule;
	}

}
