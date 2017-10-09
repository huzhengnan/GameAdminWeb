package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 口碑广告系统推广详情(单张券)
 *
 * @author auto create
 * @since 1.0, 2017-01-16 16:13:33
 */
public class KbAdvertAdvSingleVoucherResponse extends AlipayObject {

	private static final long serialVersionUID = 8557661769277823916L;

	/**
	 * 广告内容模型
	 */
	@ApiListField("adv_content_list")
	@ApiField("kb_advert_adv_content_response")
	private List<KbAdvertAdvContentResponse> advContentList;

	/**
	 * 广告内容（广告内容请使用新的属性adv_content_list，此属性仍会保留）
	 */
	@ApiField("content")
	private KbAdvertAdvContent content;

	/**
	 * 券标的
	 */
	@ApiField("voucher")
	private KbAdvertSubjectVoucherResponse voucher;

	public List<KbAdvertAdvContentResponse> getAdvContentList() {
		return this.advContentList;
	}
	public void setAdvContentList(List<KbAdvertAdvContentResponse> advContentList) {
		this.advContentList = advContentList;
	}

	public KbAdvertAdvContent getContent() {
		return this.content;
	}
	public void setContent(KbAdvertAdvContent content) {
		this.content = content;
	}

	public KbAdvertSubjectVoucherResponse getVoucher() {
		return this.voucher;
	}
	public void setVoucher(KbAdvertSubjectVoucherResponse voucher) {
		this.voucher = voucher;
	}

}
