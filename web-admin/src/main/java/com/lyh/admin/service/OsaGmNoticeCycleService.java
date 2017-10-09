package com.lyh.admin.service;

import com.lyh.admin.model.OsaGmNoticeCycle;

/** 
 * ClassName:OsaGmNoticeCycleService <br/> 
 * TODO:公告次数
 * Date:     2017年10月5日 下午4:30:37 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaGmNoticeCycleService extends BaseService<OsaGmNoticeCycle> {
	/** 
	 * sendNotice:(). <br/> 
	 * TODO().<br/> 
	 * 发送消息
	 * @author lyh 
	 * @param opGmtNoticeCycle
	 * @param record
	 * @return 
	 */  
	public String sendNotice(OsaGmNoticeCycle gmtNoticeCycle,boolean record);
}
  