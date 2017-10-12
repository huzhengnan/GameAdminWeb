package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGmSendMoneyPayMapper;
import com.lyh.admin.model.OsaGmSendMoneyPay;
import com.lyh.admin.model.OsaGmSendMoneyPayExample;
import com.lyh.admin.service.OsaGmSendMoneyPayService;


/** 
 * ClassName:OsaGmSendMoneyPayServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:07:31 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGmSendMoneyPayServiceImpl implements OsaGmSendMoneyPayService {
	@Resource
	private OsaGmSendMoneyPayMapper mapper;
	
	@Override
	public void insert(OsaGmSendMoneyPay t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGmSendMoneyPay t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGmSendMoneyPay findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<OsaGmSendMoneyPay> getSendMoneyPayList() {
		// TODO Auto-generated method stub
		OsaGmSendMoneyPayExample example = new OsaGmSendMoneyPayExample();
		example.setOrderByClause("create_time desc");
		return mapper.selectByExample(example);
		
	}
	
}
  