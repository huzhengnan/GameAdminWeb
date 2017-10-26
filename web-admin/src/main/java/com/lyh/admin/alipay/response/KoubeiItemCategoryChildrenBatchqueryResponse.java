package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.StandardCategoryInfo;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: koubei.item.category.children.batchquery response.
 * 
 * @author auto create
 * @since 1.0, 2017-06-06 11:40:51
 */
public class KoubeiItemCategoryChildrenBatchqueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 8889277798839337283L;

	/** 
	 * 口碑标准后台类目信息列表
	 */
	@ApiListField("category_list")
	@ApiField("standard_category_info")
	private List<StandardCategoryInfo> categoryList;

	public void setCategoryList(List<StandardCategoryInfo> categoryList) {
		this.categoryList = categoryList;
	}
	public List<StandardCategoryInfo> getCategoryList( ) {
		return this.categoryList;
	}

}
