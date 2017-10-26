package com.lyh.admin.task;

import java.util.concurrent.ConcurrentLinkedQueue;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.game.protocol.gm.GmInviteCodeHttpProtocol;
import com.game.protocol.gm.GmInviteCodeProtocolRequest;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.service.OsaGamePlayerService;
import com.lyh.admin.service.OsaGameWorldService;
import com.lyh.admin.tools.PlatformToServerConnection;

public class InviteCodeTask {
	private Logger logger =LoggerFactory.getLogger(InviteCodeTask.class);
	public static final ConcurrentLinkedQueue<GmInviteCodeProtocolRequest> inviteCodeList = new ConcurrentLinkedQueue<GmInviteCodeProtocolRequest>();
	

	@Resource
	private OsaGameWorldService gameWorldService;
	
	@Resource
	private OsaGamePlayerService gamePlayerService;
	
	/**
	 * 发送循环公告 周期10
	 */
	public synchronized void work() {
		
//		while (!inviteCodeList.isEmpty()) {
//			
//			GmInviteCodeProtocolRequest req = inviteCodeList.poll();
//			try {
//				OsaGameWorld opGameworld = gameWorldService.getWorldByWorldId(req.getServerId());
//				
//				if (opGameworld == null){
//					continue;
//				}
//				
//				OsaGamePlayer passport = gamePlayerService.getGamePlayerByOpenId(req.getOpenId());
//				if (passport != null ){
//					passport.setInviteCode(req.getInviteCode());
//					
//					gamePlayerService.update(passport);
//				}
//				GmInviteCodeHttpProtocol resp = (GmInviteCodeHttpProtocol) PlatformToServerConnection.sendPlatformToServer(opGameworld.getIp(), opGameworld.getServerUrl(), req);
//			} catch (Exception e) {
//				e.printStackTrace();
//				logger.error("邀请码出异常了::",e);
//			}
//		}
		
	}
	
}
