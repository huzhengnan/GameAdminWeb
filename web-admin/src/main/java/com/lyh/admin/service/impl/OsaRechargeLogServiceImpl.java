package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaRechargeLogMapper;
import com.lyh.admin.model.OsaRechargeLog;
import com.lyh.admin.service.OsaRechargeLogService;

/** 
 * ClassName:OsaRechargeLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:12:48 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaRechargeLogServiceImpl implements OsaRechargeLogService {
	@Resource
	private OsaRechargeLogMapper mapper;
	@Override
	public void insert(OsaRechargeLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaRechargeLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaRechargeLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  