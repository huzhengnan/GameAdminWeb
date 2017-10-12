package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaOperatorRechargeMapper;
import com.lyh.admin.model.OsaOperatorRecharge;
import com.lyh.admin.model.OsaOperatorRechargeExample;
import com.lyh.admin.service.OsaOperatorRechargeService;

/** 
 * ClassName:OsaOperatorRechargeServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月12日 下午4:47:48 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaOperatorRechargeServiceImpl implements OsaOperatorRechargeService {
	
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
	
}
  