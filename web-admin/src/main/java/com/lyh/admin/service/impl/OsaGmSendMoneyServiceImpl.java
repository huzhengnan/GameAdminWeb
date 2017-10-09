package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGmSendMoneyMapper;
import com.lyh.admin.model.OsaGmSendMoney;
import com.lyh.admin.service.OsaGmSendMoneyService;

/** 
 * ClassName:OsaGmSendMoneyServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:07:50 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGmSendMoneyServiceImpl implements OsaGmSendMoneyService {
	@Resource
	private OsaGmSendMoneyMapper mapper;
	
	@Override
	public void insert(OsaGmSendMoney t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGmSendMoney t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGmSendMoney findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  