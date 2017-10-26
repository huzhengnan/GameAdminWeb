package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.ItemQueryResponse;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: koubei.item.batchquery response.
 * 
 * @author auto create
 * @since 1.0, 2017-05-31 21:37:14
 */
public class KoubeiItemBatchqueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 8522441362715885385L;

	/** 
	 * 当前页码
	 */
	@ApiField("current_page_no")
	private String currentPageNo;

	/** 
	 * 商品信息
	 */
	@ApiListField("item_infos")
	@ApiField("item_query_response")
	private List<ItemQueryResponse> itemInfos;

	/** 
	 * 每页记录数
	 */
	@ApiField("page_size")
	private String pageSize;

	/** 
	 * 总共商品数目
	 */
	@ApiField("total_items")
	private String totalItems;

	/** 
	 * 总页码数目
	 */
	@ApiField("total_page_no")
	private String totalPageNo;

	public void setCurrentPageNo(String currentPageNo) {
		this.currentPageNo = currentPageNo;
	}
	public String getCurrentPageNo( ) {
		return this.currentPageNo;
	}

	public void setItemInfos(List<ItemQueryResponse> itemInfos) {
		this.itemInfos = itemInfos;
	}
	public List<ItemQueryResponse> getItemInfos( ) {
		return this.itemInfos;
	}

	public void setPageSize(String pageSize) {
		this.pageSize = pageSize;
	}
	public String getPageSize( ) {
		return this.pageSize;
	}

	public void setTotalItems(String totalItems) {
		this.totalItems = totalItems;
	}
	public String getTotalItems( ) {
		return this.totalItems;
	}

	public void setTotalPageNo(String totalPageNo) {
		this.totalPageNo = totalPageNo;
	}
	public String getTotalPageNo( ) {
		return this.totalPageNo;
	}

}
