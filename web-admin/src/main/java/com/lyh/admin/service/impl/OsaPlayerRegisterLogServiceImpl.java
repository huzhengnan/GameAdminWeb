package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaPlayerRegisterLogMapper;
import com.lyh.admin.model.OsaPlayerRegisterLog;
import com.lyh.admin.service.OsaPlayerRegisterLogService;

/** 
 * ClassName:OsaPlayerRegisterLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:09:58 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaPlayerRegisterLogServiceImpl implements OsaPlayerRegisterLogService {
	@Resource
	private OsaPlayerRegisterLogMapper mapper;
	
	@Override
	public void insert(OsaPlayerRegisterLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaPlayerRegisterLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaPlayerRegisterLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  