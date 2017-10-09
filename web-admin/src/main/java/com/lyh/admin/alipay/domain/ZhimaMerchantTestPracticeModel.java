package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * asd
 *
 * @author auto create
 * @since 1.0, 2016-10-26 18:05:09
 */
public class ZhimaMerchantTestPracticeModel extends AlipayObject {

	private static final long serialVersionUID = 2833451123543857337L;

	/**
	 * a d
	 */
	@ApiListField("add")
	@ApiField("string")
	private List<String> add;

	/**
	 * zzz
	 */
	@ApiField("xxxx")
	private XXXXsdasdasd xxxx;

	public List<String> getAdd() {
		return this.add;
	}
	public void setAdd(List<String> add) {
		this.add = add;
	}

	public XXXXsdasdasd getXxxx() {
		return this.xxxx;
	}
	public void setXxxx(XXXXsdasdasd xxxx) {
		this.xxxx = xxxx;
	}

}
