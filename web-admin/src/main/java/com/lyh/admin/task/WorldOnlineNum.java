package com.lyh.admin.task;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.game.protocol.gm.GmOnLineNumHttpProtocol;
import com.game.protocol.gm.GmOnLineNumProtocolRequest;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaOnlineLog;
import com.lyh.admin.service.OsaGameWorldService;
import com.lyh.admin.service.OsaOnlineLogService;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.admin.vo.bean.WorldOnlineData;

/**
 * 区服实时在线人数 Created by IntelliJ IDEA. User: Administrator Date: 13-8-15 Time: 下午3:38 To change this template use File | Settings | File Templates.
 */
public class WorldOnlineNum {
	private static final Logger logger = LoggerFactory.getLogger(WorldOnlineNum.class);
	/**
	 * 缓存实时数据 5分钟。 key:worldid
	 */
	public static final ConcurrentHashMap<String, WorldOnlineData> onlineMap = new ConcurrentHashMap<String, WorldOnlineData>();
	
	@Resource
	private OsaGameWorldService worldService;
	@Resource
	private OsaOnlineLogService worldOnlineService;
	
	/**
	 * 人数获取周期任务
	 */
	public synchronized void work() {
		// System.out.println(">>>>>>>>>区服实时在线人数 >>>>>>>>>>>>>>>");
		
		List<OsaGameWorld> lists = worldService.getWorldList(1);
		for (OsaGameWorld wobj : lists) {
			if (wobj.getStatus().equals("1")) { // 正常启用中
				
				// // 初始数据缓存
				// if (onlineMap.get(wobj.getWorldId()) == null) {
				// WorldOnlineData worldOnline = new WorldOnlineData();
				// // 数据队列初始化
				// worldOnline.onlineData = new ConcurrentLinkedQueue<Integer>(); // 数据队列 size==>60
				// while (worldOnline.onlineData.size() < 60) {
				// worldOnline.onlineData.add(0);
				// }
				//
				// // 数据提取 -- 初次从数据库提取
				// OnlineDataByDay onlineDataByDay = worldOnlineService.selectOnlineDataByDay(ToolUtils.getNowDate("yyyy-MM-dd"), wobj.getWorldId());
				// worldOnline.minNum = onlineDataByDay.getMinnum();
				// worldOnline.avgNum = onlineDataByDay.getAvgnum();
				// worldOnline.maxNum = onlineDataByDay.getMaxnum();
				//
				// onlineMap.put(wobj.getWorldId(), worldOnline);
				// }
				
				try {
					// 获取数据
					int num = getPersonNum(wobj);
					if (num >= 0) {
//						WorldOnlineData curObj = onlineMap.get(wobj.getWorldId());
//						// 数据入缓存
//						if (curObj != null && curObj.onlineData != null) {
//							curObj.onlineData.poll();
//							curObj.onlineData.add(num);
//						}
//						// 缓存更新
//						if (num > curObj.maxNum) {
//							curObj.maxNum = num;
//						} else if (num < curObj.minNum) {
//							curObj.minNum = num;
//						}
						
						// curObj.avgNum = (int) Tools.round((curObj.avgNum * curObj.getNum + num) / (curObj.getNum + 1), 0);
					//	curObj.getNum++;
						//curObj.curNum = num;
						
						// 数据入库
						OsaOnlineLog opOssQlzOnlinecurLog = new OsaOnlineLog();
						opOssQlzOnlinecurLog.setOnlineNum(num);
						opOssQlzOnlinecurLog.setWorldId(wobj.getWorldId());
						opOssQlzOnlinecurLog.setAddtime(ToolUtils.getNowDate());
						// opOssQlzOnlinecurLog.setId(IdGenerateUtils.makeId());
						worldOnlineService.insert(opOssQlzOnlinecurLog);
						
					} else {
						System.out.println("数据获取异常：" + num + "[游戏区:" + wobj.getwName() + "]");
					}
				} catch (Exception e) {
					logger.error("异常::", e);
				}
			}
		}
	}
	
	/**
	 * 获取人数
	 * 
	 * @param wobj
	 * @return
	 */
	private int getPersonNum(OsaGameWorld wobj) {
		int num = -1;
		try {
			GmOnLineNumProtocolRequest req = new GmOnLineNumProtocolRequest();
			req.setServerId(wobj.getWorldId());
			
			GmOnLineNumHttpProtocol resp = (GmOnLineNumHttpProtocol) PlatformToServerConnection.sendPlatformToServer(wobj.getIp(), wobj.getServerUrl(), req);
			// OnlineNum_request onlineNum_request = new OnlineNum_request();
			// SendReqToGame.getInstance().init(wobj.getIp(), Integer.parseInt(wobj.getServerurl()));
			// String res = SendReqToGame.getInstance().sendMessage(onlineNum_request, wobj.getWorldid()).toString();
			
			num = resp.getOnlinenum();
			if (num < 0) {
				num = 0;
			}
		} catch (Exception e) {
			// e.printStackTrace();
		}
		return num;
	}
	
}
