package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaGameWorld;

/** 
 * ClassName:OsaGameWorldService <br/> 
 * TODO:游戏服务器
 * Date:     2017年10月5日 下午4:24:51 <br/> 
 * @author   lyh 
 * @version    
 */

public interface OsaGameWorldService extends BaseService<OsaGameWorld> {
	
	/** 
	 * getWorldByWorldId:(). <br/> 
	 * TODO().<br/> 
	 * worldId
	 * @author lyh 
	 * @param worldId
	 * @return 
	 */  
	OsaGameWorld getWorldByWorldId(String worldId);
	
	
	/**
	 * 获取区服列表信息
	 * 
	 * @return
	 */
	public List<OsaGameWorld> getWorldList(int status);
}
  