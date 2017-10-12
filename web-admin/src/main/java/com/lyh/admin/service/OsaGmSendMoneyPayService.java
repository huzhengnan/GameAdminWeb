package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaGmSendMoneyPay;

/** 
 * ClassName:OsaGmSendMoneyPay <br/> 
 * TODO:给玩家发钱操作
 * Date:     2017年10月5日 下午4:35:09 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaGmSendMoneyPayService extends BaseService<OsaGmSendMoneyPay> {
	
	/** 
	 * getSendMoneyPayList:(). <br/> 
	 * TODO().<br/> 
	 * 获取内充记录
	 * @author lyh 
	 * @return 
	 */  
	List<OsaGmSendMoneyPay> getSendMoneyPayList();
}
  