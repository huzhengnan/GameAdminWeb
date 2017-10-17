package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaProxyRechargeMapper;
import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.model.OsaProxyRechargeExample;
import com.lyh.admin.service.OsaProxyRechargeService;

/** 
 * ClassName:OsaProxyRechargeServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:11:26 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaProxyRechargeServiceImpl implements OsaProxyRechargeService {
	@Resource
	private OsaProxyRechargeMapper mapper;
	
	@Override
	public void insert(OsaProxyRecharge t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaProxyRecharge t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaProxyRecharge findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<OsaProxyRecharge> getMyBuyCardList(String userName) {
		// TODO Auto-generated method stub
		OsaProxyRechargeExample example  = new OsaProxyRechargeExample();
		OsaProxyRechargeExample.Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(userName);
		criteria.andIsProxyEqualTo((byte)1);
		criteria.andFlagEqualTo(1);
		return mapper.selectByExample(example);
	}

	@Override
	public List<OsaProxyRecharge> getMySellCardList(String fatherName) {
		// TODO Auto-generated method stub
		OsaProxyRechargeExample example  = new OsaProxyRechargeExample();
		OsaProxyRechargeExample.Criteria criteria = example.createCriteria();
		criteria.andProxyNameEqualTo(fatherName);
		criteria.andIsProxyEqualTo((byte)1);
		criteria.andFlagEqualTo(1);
		return mapper.selectByExample(example);
	}

	@Override
	public List<OsaProxyRecharge> getPlayerRechargeList(String fatherName, int online) {
		// TODO Auto-generated method stub
		OsaProxyRechargeExample example  = new OsaProxyRechargeExample();
		OsaProxyRechargeExample.Criteria criteria = example.createCriteria();
		criteria.andProxyNameEqualTo(fatherName);
		criteria.andIsProxyEqualTo((byte)0);
		if (online > -1){
			criteria.andOnlinePayEqualTo(online);
		}
		criteria.andFlagEqualTo(1);
		return mapper.selectByExample(example);
	}

	@Override
	public OsaProxyRecharge getProxyRechargeByOrder(String orderId) {
		// TODO Auto-generated method stub
		OsaProxyRechargeExample example  = new OsaProxyRechargeExample();
		OsaProxyRechargeExample.Criteria criteria = example.createCriteria();
		criteria.andTraderOrderEqualTo(orderId);
		List<OsaProxyRecharge> list = mapper.selectByExample(example);
		
		return list.size() > 0 ? list.get(0): null;
	}

	@Override
	public List<OsaProxyRecharge> getSettlementListByFetch(String proxyName,int isFetch) {
		// TODO Auto-generated method stub
		OsaProxyRechargeExample example  = new OsaProxyRechargeExample();
		OsaProxyRechargeExample.Criteria criteria = example.createCriteria();
		criteria.andProxyNameEqualTo(proxyName);
		criteria.andIsFetchEqualTo(isFetch);
		criteria.andFetchMoneyGreaterThan(0.0);
		return mapper.selectByExample(example);
	}

	@Override
	public List<OsaProxyRecharge> getProxyRechargeByIds(List<Long> ids) {
		// TODO Auto-generated method stub
		OsaProxyRechargeExample example  = new OsaProxyRechargeExample();
		OsaProxyRechargeExample.Criteria criteria = example.createCriteria();
		criteria.andIdIn(ids);
		return mapper.selectByExample(example);
	}
	
}
  