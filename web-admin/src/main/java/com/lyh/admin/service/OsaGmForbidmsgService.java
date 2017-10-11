package com.lyh.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lyh.admin.model.OsaGmForbidmsg;

/** 
 * ClassName:OsaGmForbidmsgService <br/> 
 * TODO:GM封禁操作
 * Date:     2017年10月5日 下午4:26:34 <br/> 
 * @author   lyh 
 * @version    
 */

public interface OsaGmForbidmsgService extends BaseService<OsaGmForbidmsg> {
	
	/** 
	 * getGmForbidMsgList:(). <br/> 
	 * TODO().<br/> 
	 * gm封禁记录
	 * @author lyh 
	 * @return 
	 */  
	List<OsaGmForbidmsg> getGmForbidMsgList();
	
}
  