package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaProxyRechargeMapper;
import com.lyh.admin.model.OsaProxyRecharge;
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
	
}
  