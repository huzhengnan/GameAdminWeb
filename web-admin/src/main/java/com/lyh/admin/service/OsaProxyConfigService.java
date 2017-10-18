package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaProxyConfig;

/** 
 * ClassName:OsaProxyConfigService <br/> 
 * TODO:代理配置
 * Date:     2017年10月5日 下午4:40:36 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaProxyConfigService extends BaseService<OsaProxyConfig> {
	
	/** 
	 * getProxyConfigList:(). <br/> 
	 * TODO().<br/> 
	 * 代理配置列表
	 * @author lyh 
	 * @return 
	 */  
	List<OsaProxyConfig> getProxyConfigList();
}
  