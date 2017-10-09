package com.lyh.admin.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.game.protocol.gm.GmNoticeHttpProtocol;
import com.game.protocol.gm.GmNoticeProtocolRequest;
import com.lyh.admin.mapper.OsaGmNoticeCycleMapper;
import com.lyh.admin.mapper.OsaGmNoticeMapper;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGmNotice;
import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.model.OsaGmNoticeCycleExample;
import com.lyh.admin.model.OsaGmNoticeExample;
import com.lyh.admin.service.OsaGameWorldService;
import com.lyh.admin.service.OsaGmNoticeService;
import com.lyh.admin.task.SendNoticeCycle;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.admin.vo.bean.GmtSendNoticeBean;

/** 
 * ClassName:OsaGmNoticeServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:06:38 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGmNoticeServiceImpl implements OsaGmNoticeService {
	@Resource
	private OsaGmNoticeMapper mapper;
	@Resource
	private OsaGameWorldService worldService;
	@Resource
	private OsaGmNoticeCycleMapper gmNoticeCycleService;
	
	@Override
	public void insert(OsaGmNotice t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGmNotice t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGmNotice findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
	@Override
	public String sendNotic(GmtSendNoticeBean gmtSendNoticeBean, boolean record) {
		String res = "";
		if (gmtSendNoticeBean != null) {
			// 获取区服信息
			OsaGameWorld opGameworld = worldService.getWorldByWorldId(""+gmtSendNoticeBean.getWid());
			
			if (gmtSendNoticeBean.getAct().equals("5100")) {
				GmNoticeProtocolRequest req = new GmNoticeProtocolRequest();
				req.setContent(gmtSendNoticeBean.getContent());
				req.setServerId(opGameworld.getWorldId());
				// SendReqToGame.getInstance().init(opGameworld.getIp(), Integer.parseInt(opGameworld.getServerurl()));
				// res = SendReqToGame.getInstance().sendMessage(sendNotice_request, opGameworld.getWorldid()).toString();
				
				GmNoticeHttpProtocol resp = (GmNoticeHttpProtocol) PlatformToServerConnection.sendPlatformToServer(opGameworld.getIp(), opGameworld.getServerUrl(), req);
				res = "" + resp.getStatus();
				if (record) {
					OsaGmNotice opGmtNotice = new OsaGmNotice();
					opGmtNotice.setAppId(gmtSendNoticeBean.getAppid());
					opGmtNotice.setWorldId(""+gmtSendNoticeBean.getWid());
					opGmtNotice.setType(Integer.parseInt(gmtSendNoticeBean.getType()));
					opGmtNotice.setContent(gmtSendNoticeBean.getContent());
					opGmtNotice.setOpttime(ToolUtils.getNowDate());
					opGmtNotice.setMsg(gmtSendNoticeBean.getMsg());
					opGmtNotice.setUserName(gmtSendNoticeBean.getUser());
					opGmtNotice.setOptres(res.equals("1") ? "成功" : (res.equals("-1000") ? "链接失败" : (res.equals("-1002") ? "接入失败" : "失败" + res)));
					opGmtNotice.setId(IdGenerateUtils.makeId());
					mapper.insertSelective(opGmtNotice);
				}
				
			}
			
		}
		return res;
	}
	
	@Override
	public String sendNotic(OsaGmNoticeCycle opGmtNoticeCycle, boolean record) {
		GmtSendNoticeBean gmtSendNoticeBean = new GmtSendNoticeBean();
		gmtSendNoticeBean.setAppid(opGmtNoticeCycle.getAppId());
		gmtSendNoticeBean.setWid(Integer.parseInt(opGmtNoticeCycle.getWorldId()));
		gmtSendNoticeBean.setType(opGmtNoticeCycle.getType() + "");
		gmtSendNoticeBean.setTime(opGmtNoticeCycle.getCycletime() + "");
		gmtSendNoticeBean.setContent(opGmtNoticeCycle.getContent());
		gmtSendNoticeBean.setMsg(opGmtNoticeCycle.getMsg());
		gmtSendNoticeBean.setUser(opGmtNoticeCycle.getUserName());
		gmtSendNoticeBean.setAct("5100");
		
		String res = sendNotic(gmtSendNoticeBean, record);
		
		return res;
	}
	@Override
	public List<OsaGmNotice> getNoticList() {
		OsaGmNoticeExample opGmtNoticeExample = new OsaGmNoticeExample();
		//OsaGmNoticeExample.Criteria criteria = opGmtNoticeExample.createCriteria();
		opGmtNoticeExample.setOrderByClause("opttime desc");
		
		List<OsaGmNotice> msg =mapper.selectByExample(opGmtNoticeExample);
		return msg;
	}
	@Override
	public int sendCycleNotic(GmtSendNoticeBean gmtSendNoticeBean) {
		OsaGmNoticeCycle opGmtNoticeCycle = new OsaGmNoticeCycle();
		opGmtNoticeCycle.setContent(gmtSendNoticeBean.getContent());
		opGmtNoticeCycle.setMsg(gmtSendNoticeBean.getMsg());
		opGmtNoticeCycle.setType(Integer.parseInt(gmtSendNoticeBean.getType()));
		opGmtNoticeCycle.setCycletime(Integer.parseInt(gmtSendNoticeBean.getTime()));
		opGmtNoticeCycle.setUserName(gmtSendNoticeBean.getUser());
		opGmtNoticeCycle.setWorldId(gmtSendNoticeBean.getWid() + "");
		opGmtNoticeCycle.setAppId(gmtSendNoticeBean.getAppid());
		opGmtNoticeCycle.setSettime(ToolUtils.getNowDate());
		opGmtNoticeCycle.setStatus("1"); // 活跃
		opGmtNoticeCycle.setLastSendTime(System.currentTimeMillis() + opGmtNoticeCycle.getCycletime() * 60 * 1000);
		opGmtNoticeCycle.setId(IdGenerateUtils.makeId());
		
		gmNoticeCycleService.insertSelective(opGmtNoticeCycle);
		
		
		
		// 放入循环公告...
		SendNoticeCycle.cycleNotices.put(opGmtNoticeCycle.getId(), opGmtNoticeCycle);
		
		return 1; // To change body of implemented methods use File | Settings | File Templates.
	}
	
	@Override
	public List<OsaGmNoticeCycle> getCycleNoticeList(String status) {
		OsaGmNoticeCycleExample opGmtNoticeCycleExample = new OsaGmNoticeCycleExample();
		OsaGmNoticeCycleExample.Criteria criteria = opGmtNoticeCycleExample.createCriteria();
		if (!status.equals("-1")) {
			criteria.andStatusEqualTo(status); // 1: 活跃
		}
		
		List<OsaGmNoticeCycle> lists = gmNoticeCycleService.selectByExample(opGmtNoticeCycleExample);
		return lists;
	}
	
	public int stopCycleNotic(String ids) {
		
		String dids[] = ids.split(",");
		List<Long> values = new ArrayList<Long>();
		for (String id : dids) {
			values.add(Long.parseLong(id));
		}
		
		OsaGmNoticeCycleExample opGmtNoticeCycleExample = new OsaGmNoticeCycleExample();
		OsaGmNoticeCycleExample.Criteria criteria = opGmtNoticeCycleExample.createCriteria();
		criteria.andIdIn(values);
		
		OsaGmNoticeCycle opGmtNoticeCycle = new OsaGmNoticeCycle();
		opGmtNoticeCycle.setStatus("0");
		
		int res = gmNoticeCycleService.updateByExampleSelective(opGmtNoticeCycle, opGmtNoticeCycleExample);
		
		List<OsaGmNoticeCycle> opGmtNoticeCycles = gmNoticeCycleService.selectByExample(opGmtNoticeCycleExample);
		if (opGmtNoticeCycles.size() > 0) {
			for (OsaGmNoticeCycle obj : opGmtNoticeCycles) {
				if (obj.getStatus().equals("0")) {
					// 去除循环公告...
					if (SendNoticeCycle.cycleNotices.get(obj.getId()) != null) {
						SendNoticeCycle.cycleNotices.remove(obj.getId());
					}
				}
			}
		}
		return res;
	}
	
	public int startCycleNotic(String ids) {
		String dids[] = ids.split(",");
		List<Long> values = new ArrayList<Long>();
		for (String id : dids) {
			values.add(Long.parseLong(id));
		}
		
		// 更新状态
		OsaGmNoticeCycleExample opGmtNoticeCycleExample = new OsaGmNoticeCycleExample();
		OsaGmNoticeCycleExample.Criteria criteria = opGmtNoticeCycleExample.createCriteria();
		criteria.andIdIn(values);
		
		OsaGmNoticeCycle opGmtNoticeCycle = new OsaGmNoticeCycle();
		opGmtNoticeCycle.setStatus("1");
		
		int res = gmNoticeCycleService.updateByExampleSelective(opGmtNoticeCycle, opGmtNoticeCycleExample);
		
		// 查询获取
		List<OsaGmNoticeCycle> opGmtNoticeCycles = gmNoticeCycleService.selectByExample(opGmtNoticeCycleExample);
		if (opGmtNoticeCycles.size() > 0) {
			for (OsaGmNoticeCycle obj : opGmtNoticeCycles) {
				if (obj.getStatus().equals("1")) {
					// 放入循环公告...
					if (SendNoticeCycle.cycleNotices.get(obj.getId()) == null) {
						SendNoticeCycle.cycleNotices.put(obj.getId(), obj);
					}
				}
			}
		}
		
		return res;
	}
	
	public int del(String ids) {
		String dids[] = ids.split(",");
		List<Long> values = new ArrayList<Long>();
		for (String id : dids) {
			values.add(Long.parseLong(id));
			
			SendNoticeCycle.cycleNotices.remove(new Long(id));
		}
		
		OsaGmNoticeCycleExample opGmtNoticeCycleExample = new OsaGmNoticeCycleExample();
		OsaGmNoticeCycleExample.Criteria criteria = opGmtNoticeCycleExample.createCriteria();
		criteria.andIdIn(values);
		
		int res = gmNoticeCycleService.deleteByExample(opGmtNoticeCycleExample);
		
		return res;
	}
	
}
  