package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.game.protocol.gm.GmRechargeHttpProtocol;
import com.game.protocol.gm.GmRechargeProtocolRequest;
import com.lyh.admin.mapper.OsaOperatorRechargeMapper;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaOperatorRecharge;
import com.lyh.admin.model.OsaOperatorRechargeExample;
import com.lyh.admin.service.OsaOperatorRechargeService;
import com.lyh.admin.tools.PlatformToServerConnection;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.admin.tools.encrypt.MD5;

/** 
 * ClassName:OsaOperatorRechargeServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月12日 下午4:47:48 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaOperatorRechargeServiceImpl implements OsaOperatorRechargeService {
	
	private  static Logger logger = LoggerFactory.getLogger(OsaOperatorRechargeServiceImpl.class);
	
	@Resource
	private OsaOperatorRechargeMapper mapper;
	
	@Override
	public void insert(OsaOperatorRecharge t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaOperatorRecharge t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaOperatorRecharge findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
	@Override
	public List<OsaOperatorRecharge> getOperatorRechargeList() {
		// TODO Auto-generated method stub
		OsaOperatorRechargeExample example = new OsaOperatorRechargeExample();
		OsaOperatorRechargeExample.Criteria criteria = example.createCriteria();
		
		example.setOrderByClause("addtime desc");
		return mapper.selectByExample(example);

	}
	
	@Override
	public double getSumTotalPay() {
		// TODO Auto-generated method stub
		OsaOperatorRechargeExample example = new OsaOperatorRechargeExample();
		OsaOperatorRechargeExample.Criteria criteria = example.createCriteria();
		example.setOrderByClause("addtime desc");
		List<OsaOperatorRecharge> list = mapper.selectByExample(example);
		double totalPay = 0;
		for (OsaOperatorRecharge pay : list){

		   totalPay+= pay.getGold()== null ? 0 : pay.getGold();

		}
		return totalPay;
	}
	
	
@Override
public int recharge(String openId, String billno,double dPrice, double money, int time,OsaGameWorld gameworld,int online) {
		
		long status = 0;
		int num = 0;
		String res = ""; // 发货结果
		try {
			// 核实订单是否存在
			OsaOperatorRechargeExample opOperatorRechargeExample = new OsaOperatorRechargeExample();
			OsaOperatorRechargeExample.Criteria criteria = opOperatorRechargeExample.createCriteria();
			criteria.andBillnoEqualTo(billno);
			status = mapper.countByExample(opOperatorRechargeExample);
			if (status > 0) {
				return 4;
			}
			
			GmRechargeProtocolRequest req = new GmRechargeProtocolRequest();
			req.setBillon(billno); // 平台单号
			req.setExtendstr(""+dPrice);
			req.setMoney(""+ money);
			req.setOpenid(openId);
			req.setOnline(online);
			
			req.setSigstr(MD5.encodeMD5(req.getOpenid() + req.getBillon() + req.getMoney() + "123456"));
			req.setServerId("" + gameworld.getWorldId());
			GmRechargeHttpProtocol resp = (GmRechargeHttpProtocol) PlatformToServerConnection.sendPlatformToServer(gameworld.getIp(), gameworld.getServerUrl(), req);
			res = resp.getResult();
			
			// 日志记录
			if (res.equals("1")) {
				OsaOperatorRecharge opOperatorRecharge = new OsaOperatorRecharge();
				opOperatorRecharge.setOpenId(openId);
				opOperatorRecharge.setBillno(billno);
				opOperatorRecharge.setMoney(dPrice);
				opOperatorRecharge.setGold(money);
				opOperatorRecharge.setTime(time);
				opOperatorRecharge.setWorldId(""+gameworld.getWorldId());
			
				opOperatorRecharge.setAddtime(ToolUtils.getNowDate());
				opOperatorRecharge.setRes(res);
				mapper.insert(opOperatorRecharge);
			
			} else {
				logger.error("充值错误::"+res);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("充值异常::", e);
		}
		if (res.equals("1")) {
			status = 1;
		} else {
			status = 2;
		}
		return (int)status;
	}
}
  