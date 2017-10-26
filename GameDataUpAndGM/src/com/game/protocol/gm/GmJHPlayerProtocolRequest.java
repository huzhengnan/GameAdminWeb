package com.game.protocol.gm;

import com.lyh.common.IMsgCode;
import com.lyh.dataup.log.DataUpBase;

/**
 * ClassName:GMProtocol <br/>
 * Function: TODO (GM消息接入验证). <br/>
 * Reason: TODO (). <br/>
 * Date: 2014-4-22 上午11:22:13 <br/>
 * 
 * @author lyh
 * @version
 * @see
 */
public class GmJHPlayerProtocolRequest extends DataUpBase implements IMsgCode {
	
	/****/
	private static final long serialVersionUID = 6215974659551468586L;
	
	public GmJHPlayerProtocolRequest() {
		super(GM_JH_PLAYER_HTTP_PROTOCOL);
		// TODO Auto-generated constructor stub
	}
	
	/**玩家名称 **/
	private String playerId;

	/**0=金花,1=麻将**/  
	private int  gameType = 1;
	
	public String getPlayerId() {
		return playerId;
	}

	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}

	public int getGameType() {
		return gameType;
	}

	public void setGameType(int gameType) {
		this.gameType = gameType;
	}
	
	
	
	
}
