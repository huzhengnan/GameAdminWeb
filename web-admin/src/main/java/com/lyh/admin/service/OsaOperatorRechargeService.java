package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaOperatorRecharge;

/**
 * ClassName:OsaOperatorRechargeService <br/>
 * TODO:充值记录操作 Date: 2017年10月12日 下午4:44:38 <br/>
 * 
 * @author lyh
 * @version
 */
public interface OsaOperatorRechargeService extends BaseService<OsaOperatorRecharge> {
	
	/**
	 * getOperatorRechargeList:(). <br/>
	 * TODO().<br/>
	 * 获取充值列表
	 * 
	 * @author lyh
	 * @return
	 */
	List<OsaOperatorRecharge> getOperatorRechargeList();
	
	/** 
	 * getSumTotalPay:(). <br/> 
	 * TODO().<br/> 
	 * 统计累计金额
	 * @author lyh 
	 * @return 
	 */  
	double getSumTotalPay();
	
}
