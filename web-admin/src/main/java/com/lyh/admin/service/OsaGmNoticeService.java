package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaGmNotice;
import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.vo.bean.GmtSendNoticeBean;

/** 
 * ClassName:OsaGmNoticeService <br/> 
 * TODO:公告
 * Date:     2017年10月5日 下午4:29:11 <br/> 
 * @author   lyh 
 * @version    
 */

public interface OsaGmNoticeService extends BaseService<OsaGmNotice> {
	
	/**
	 * 发送公告
	 * 
	 * @param gmtSendNoticeBean
	 * @return
	 */
	public String sendNotic(GmtSendNoticeBean gmtSendNoticeBean,boolean record);
	
	public String sendNotic(OsaGmNoticeCycle opGmtNoticeCycle,boolean record);
	
	/**
	 * 获取发送记录
	 * 
	 * @return
	 */
	public List<OsaGmNotice> getNoticList();
	
	/**
	 * 记录发送循环公告
	 * 
	 * @param gmtSendNoticeBean
	 * @return
	 */
	public int sendCycleNotic(GmtSendNoticeBean gmtSendNoticeBean);
	

	/**
	 * 获取循环公告信息
	 * 
	 * @param status -1:全状态获取
	 * @return
	 */
	public List<OsaGmNoticeCycle> getCycleNoticeList(String status);
	
	/**
	 * 停止循环公告
	 * 
	 * @param ids
	 * @return
	 */
	public int stopCycleNotic(String ids);
	
	/**
	 * 启用循环公告
	 * 
	 * @param ids
	 * @return
	 */
	public int startCycleNotic(String ids);
	
	/**
	 * 删除
	 * 
	 * @param ids
	 * @return
	 */
	public int del(String ids);
}
  