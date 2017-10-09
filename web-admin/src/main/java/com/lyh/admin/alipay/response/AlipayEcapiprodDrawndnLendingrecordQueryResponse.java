package com.lyh.admin.alipay.response;

import com.lyh.admin.alipay.AlipayResponse;
import com.lyh.admin.alipay.domain.LendingRecords;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * ALIPAY API: alipay.ecapiprod.drawndn.lendingrecord.query response.
 * 
 * @author auto create
 * @since 1.0, 2016-03-29 11:34:36
 */
public class AlipayEcapiprodDrawndnLendingrecordQueryResponse extends AlipayResponse {

	private static final long serialVersionUID = 1398937316564445391L;

	/** 
	 * 放款流水
	 */
	@ApiListField("lending_records")
	@ApiField("lending_records")
	private List<LendingRecords> lendingRecords;

	/** 
	 * 代表一次请求的唯一编号，用于追溯问题，多方联调查询问题时，ISV 可以提供该RequestId给网关，网关用来查询本次请求的具体日志
	 */
	@ApiField("request_id")
	private String requestId;

	public void setLendingRecords(List<LendingRecords> lendingRecords) {
		this.lendingRecords = lendingRecords;
	}
	public List<LendingRecords> getLendingRecords( ) {
		return this.lendingRecords;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}
	public String getRequestId( ) {
		return this.requestId;
	}

}
