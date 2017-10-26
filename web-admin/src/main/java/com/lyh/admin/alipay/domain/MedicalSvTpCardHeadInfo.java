package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * 医疗行业通知行业消息card头部信息
 *
 * @author auto create
 * @since 1.0, 2016-11-16 15:16:20
 */
public class MedicalSvTpCardHeadInfo extends AlipayObject {

	private static final long serialVersionUID = 2645245485473593691L;

	/**
	 * 模板头部图标：开发者提供公网图片地址
图片大小（长*宽,单位px）81*81
	 */
	@ApiField("header_icon")
	private String headerIcon;

	/**
	 * 模板头部标题,开发者自定义
	 */
	@ApiField("header_title")
	private String headerTitle;

	public String getHeaderIcon() {
		return this.headerIcon;
	}
	public void setHeaderIcon(String headerIcon) {
		this.headerIcon = headerIcon;
	}

	public String getHeaderTitle() {
		return this.headerTitle;
	}
	public void setHeaderTitle(String headerTitle) {
		this.headerTitle = headerTitle;
	}

}
