package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.ExtCategory;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: koubei.item.extitem.category.query response.
 * 
 * @author auto create
 * @since 1.0, 2016-07-06 10:47:52
 */
public class KoubeiItemExtitemCategoryQueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 6897237383915341979L;

	/** 
	 * 品类信息列表
	 */
	@ApiListField("category_list")
	@ApiField("ext_category")
	private List<ExtCategory> categoryList;

	public void setCategoryList(List<ExtCategory> categoryList) {
		this.categoryList = categoryList;
	}
	public List<ExtCategory> getCategoryList( ) {
		return this.categoryList;
	}

}
