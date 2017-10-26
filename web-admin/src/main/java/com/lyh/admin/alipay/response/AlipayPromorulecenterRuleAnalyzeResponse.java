package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.internal.mapping.ApiField;

/**
 * ALIPAY API: alipay.promorulecenter.rule.analyze response.
 * 
 * @author auto create
 * @since 1.0, 2017-04-14 19:13:44
 */
public class AlipayPromorulecenterRuleAnalyzeResponse extends AlipayResponse {

	private static final long serialVersionUID = 4613613998148495286L;

	/** 
	 * 未通过条件描述信息
	 */
	@ApiField("fail_condition_msg")
	private String failConditionMsg;

	/** 
	 * 未通过的条件
	 */
	@ApiField("fail_condition_name")
	private String failConditionName;

	/** 
	 * 结果码
	 */
	@ApiField("result_code")
	private String resultCode;

	/** 
	 * 服务调用是否成功
	 */
	@ApiField("success")
	private String success;

	/** 
	 * 规则是否通过
	 */
	@ApiField("triggered")
	private String triggered;

	public void setFailConditionMsg(String failConditionMsg) {
		this.failConditionMsg = failConditionMsg;
	}
	public String getFailConditionMsg( ) {
		return this.failConditionMsg;
	}

	public void setFailConditionName(String failConditionName) {
		this.failConditionName = failConditionName;
	}
	public String getFailConditionName( ) {
		return this.failConditionName;
	}

	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultCode( ) {
		return this.resultCode;
	}

	public void setSuccess(String success) {
		this.success = success;
	}
	public String getSuccess( ) {
		return this.success;
	}

	public void setTriggered(String triggered) {
		this.triggered = triggered;
	}
	public String getTriggered( ) {
		return this.triggered;
	}

}
