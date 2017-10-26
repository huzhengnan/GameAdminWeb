package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 服务插件扩展信息补充
 *
 * @author auto create
 * @since 1.0, 2016-12-22 23:46:32
 */
public class AlipayOpenServicemarketCommodityExtendinfosAddModel extends AlipayObject {

	private static final long serialVersionUID = 6827568451868198553L;

	/**
	 * 公服扩展信息列表
	 */
	@ApiListField("commodity_ext_infos")
	@ApiField("commodity_public_ext_infos")
	private List<CommodityPublicExtInfos> commodityExtInfos;

	/**
	 * 服务插件ID
	 */
	@ApiField("commodity_id")
	private String commodityId;

	/**
	 * 应用ID
	 */
	@ApiField("user_id")
	private String userId;

	public List<CommodityPublicExtInfos> getCommodityExtInfos() {
		return this.commodityExtInfos;
	}
	public void setCommodityExtInfos(List<CommodityPublicExtInfos> commodityExtInfos) {
		this.commodityExtInfos = commodityExtInfos;
	}

	public String getCommodityId() {
		return this.commodityId;
	}
	public void setCommodityId(String commodityId) {
		this.commodityId = commodityId;
	}

	public String getUserId() {
		return this.userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

}
