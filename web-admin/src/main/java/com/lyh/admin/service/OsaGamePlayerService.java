package com.lyh.admin.service;

import org.springframework.stereotype.Service;

import com.lyh.admin.model.OsaGamePlayer;

/** 
 * ClassName:OsaGamePlayerService <br/> 
 * TODO:游戏玩家
 * Date:     2017年10月5日 下午4:24:03 <br/> 
 * @author   lyh 
 * @version    
 */

public interface OsaGamePlayerService extends BaseService<OsaGamePlayer> {
	
	/** 
	 * getGamePlayerByOpenId:(). <br/> 
	 * TODO().<br/> 
	 * openId获取玩家数据
	 * @author lyh 
	 * @param openId
	 * @return 
	 */  
	OsaGamePlayer getGamePlayerByOpenId(String openId);
}
  