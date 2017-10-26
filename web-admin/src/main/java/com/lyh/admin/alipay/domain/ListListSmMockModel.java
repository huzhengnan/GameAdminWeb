package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 简单模型嵌套list
 *
 * @author auto create
 * @since 1.0, 2016-10-26 17:43:42
 */
public class ListListSmMockModel extends AlipayObject {

	private static final long serialVersionUID = 4548293459177257439L;

	/**
	 * 简单模型列表
	 */
	@ApiListField("list_simple_model_list")
	@ApiField("simple_mock_model")
	private List<SimpleMockModel> listSimpleModelList;

	public List<SimpleMockModel> getListSimpleModelList() {
		return this.listSimpleModelList;
	}
	public void setListSimpleModelList(List<SimpleMockModel> listSimpleModelList) {
		this.listSimpleModelList = listSimpleModelList;
	}

}
