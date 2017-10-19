package com.lyh.admin.task;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;

import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.service.OsaGmNoticeCycleService;
import com.lyh.admin.service.OsaGmNoticeService;
import com.lyh.admin.tools.ToolUtils;

/**
 * 发送循环的公告 Created by IntelliJ IDEA. User: Administrator Date: 13-8-15 Time: 下午3:38 To change this template use File | Settings | File Templates.
 */
public class SendNoticeCycle {
	
	/**
	 * 循环公告列表
	 */
	public static final ConcurrentHashMap<Long, OsaGmNoticeCycle> cycleNotices = new ConcurrentHashMap<Long, OsaGmNoticeCycle>();
	
	@Resource
	private OsaGmNoticeService gmtNoticeService;
	@Resource
	private OsaGmNoticeCycleService gmNoticeCycleService;
	
	/**
	 * 发送循环公告 周期10
	 */
	public synchronized void work() {
		//System.out.println(">>>>>>>>>发送循环公告 >>>>>>>>>>>>>>>cycleNotices size:" + cycleNotices.size());
		
		if (cycleNotices.size() > 0) {
			for (Map.Entry<Long, OsaGmNoticeCycle> entry : cycleNotices.entrySet()) {
				
				OsaGmNoticeCycle obj = entry.getValue();
				if (obj.getStatus().equals("1")) {
					if (obj.getLastSendTime()- System.currentTimeMillis() > 0) {
						System.out.println("发起循环公告:" + obj.getId());
						// 设置发送时间
						//obj.setLastsendtime(System.currentTimeMillis());
						obj.setOpttime(ToolUtils.getNowDate());
						// OpGmtNoticeCycleExample opGmtNoticeCycleExample = new OpGmtNoticeCycleExample();
						// OpGmtNoticeCycleExample.Criteria criteria = opGmtNoticeCycleExample.createCriteria();
						gmNoticeCycleService.update(obj);
						// 立即发送
						try{
							gmtNoticeService.sendNotic(obj,false);
						}catch(Exception e){
							e.printStackTrace();
						}
					} else {
						gmtNoticeService.stopCycleNotic("" + obj.getId());
					}
				}
			}
		}
	}
	
	/**
	 * 数据初始化 装载公告
	 */
	public void initData() {
		List<OsaGmNoticeCycle> opGmtNoticeCycles = gmtNoticeService.getCycleNoticeList("1");
		
		for (OsaGmNoticeCycle obj : opGmtNoticeCycles) {
			System.out.println("装载循环公告:" + obj.getId());
			cycleNotices.put(obj.getId(), obj);
		}
	}
	
}
