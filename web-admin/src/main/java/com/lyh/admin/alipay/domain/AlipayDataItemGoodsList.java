package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 单品信息列表（数据）
 *
 * @author auto create
 * @since 1.0, 2016-05-26 13:26:04
 */
public class AlipayDataItemGoodsList extends AlipayObject {

	private static final long serialVersionUID = 8439684661982591244L;

	/**
	 * 单品的描述信息
	 */
	@ApiField("desc")
	private String desc;

	/**
	 * 单品id列表
	 */
	@ApiListField("goods_list")
	@ApiField("string")
	private List<String> goodsList;

	public String getDesc() {
		return this.desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}

	public List<String> getGoodsList() {
		return this.goodsList;
	}
	public void setGoodsList(List<String> goodsList) {
		this.goodsList = goodsList;
	}

}
