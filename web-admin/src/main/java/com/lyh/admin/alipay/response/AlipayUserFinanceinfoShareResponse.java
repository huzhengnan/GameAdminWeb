package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.AlipayUserCreditCard;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: alipay.user.financeinfo.share response.
 * 
 * @author auto create
 * @since 1.0, 2016-03-16 16:54:10
 */
public class AlipayUserFinanceinfoShareResponse extends AlipayResponse {

	private static final long serialVersionUID = 7439376897236643889L;

	/** 
	 * 查询出的信用卡列表，包含0到多张卡，每张卡对应一组信息，包含卡号（已脱敏）和开户行代码
	 */
	@ApiListField("credit_card_list")
	@ApiField("alipay_user_credit_card")
	private List<AlipayUserCreditCard> creditCardList;

	public void setCreditCardList(List<AlipayUserCreditCard> creditCardList) {
		this.creditCardList = creditCardList;
	}
	public List<AlipayUserCreditCard> getCreditCardList( ) {
		return this.creditCardList;
	}

}
