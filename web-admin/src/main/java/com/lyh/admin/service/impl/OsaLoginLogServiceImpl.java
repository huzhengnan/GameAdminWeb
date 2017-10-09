package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaLoginLogMapper;
import com.lyh.admin.model.OsaLoginLog;
import com.lyh.admin.service.OsaLoginLogService;

/** 
 * ClassName:OsaLoginLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:08:13 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaLoginLogServiceImpl implements OsaLoginLogService {
	@Resource
	private OsaLoginLogMapper mapper;
	
	@Override
	public void insert(OsaLoginLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaLoginLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaLoginLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  