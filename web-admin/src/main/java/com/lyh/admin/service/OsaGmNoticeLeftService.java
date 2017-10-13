package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaGmNoticeLeft;

/** 
 * ClassName:OsaGmNoticeLeftService <br/> 
 * TODO:公告栏
 * Date:     2017年10月5日 下午4:31:22 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaGmNoticeLeftService extends BaseService<OsaGmNoticeLeft> {
	
	
	/** 
	 * getNoticeLeftList:(). <br/> 
	 * TODO().<br/> 
	 * 公告栏记录
	 * @author lyh 
	 * @return 
	 */  
	List<OsaGmNoticeLeft> getNoticeLeftList();
}
  