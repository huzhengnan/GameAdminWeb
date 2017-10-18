package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaProxyRechargeFetch;

/** 
 * ClassName:OsaProxyRechargeFetchService <br/> 
 * TODO:结算申请
 * Date:     2017年10月5日 下午4:42:18 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaProxyRechargeFetchService extends BaseService<OsaProxyRechargeFetch> {
	
	/** 
	 * getProxyRechargeFetchList:(). <br/> 
	 * TODO().<br/> 
	 * 获取结算列表 
	 * @author lyh 
	 * @param status
	 * @return 
	 */  
	List<OsaProxyRechargeFetch> getProxyRechargeFetchList(int status);
}
  