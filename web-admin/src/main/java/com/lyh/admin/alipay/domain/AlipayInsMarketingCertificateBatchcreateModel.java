package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 保险凭证批量创建
 *
 * @author auto create
 * @since 1.0, 2016-10-13 19:50:45
 */
public class AlipayInsMarketingCertificateBatchcreateModel extends AlipayObject {

	private static final long serialVersionUID = 5666921832525677498L;

	/**
	 * 批量创建凭证请求
	 */
	@ApiListField("ins_create_certificate_requests")
	@ApiField("ins_create_certificate_request")
	private List<InsCreateCertificateRequest> insCreateCertificateRequests;

	public List<InsCreateCertificateRequest> getInsCreateCertificateRequests() {
		return this.insCreateCertificateRequests;
	}
	public void setInsCreateCertificateRequests(List<InsCreateCertificateRequest> insCreateCertificateRequests) {
		this.insCreateCertificateRequests = insCreateCertificateRequests;
	}

}
