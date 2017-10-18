package com.lyh.admin.service;

import java.util.List;

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
	
	/** 
	 * getGamePlayerList:(). <br/> 
	 * TODO().<br/> 
	 * 按条件获取玩家
	 * @author lyh 
	 * @param playerId
	 * @param openId
	 * @return 
	 */  
	List<OsaGamePlayer> getGamePlayerList(long playerId,String openId);
	
	
	/** 
	 * getGamePlayersByInviteCode:(). <br/> 
	 * TODO().<br/> 
	 * 获取玩家用邀请码
	 * @author lyh 
	 * @param inviteCode
	 * @return 
	 */  
	List<OsaGamePlayer> getGamePlayersByInviteCode(String inviteCode);
	
}
  