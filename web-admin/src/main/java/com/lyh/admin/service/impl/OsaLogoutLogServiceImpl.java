package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaLogoutLogMapper;
import com.lyh.admin.model.OsaLogoutLog;
import com.lyh.admin.service.OsaLogoutLogService;

/** 
 * ClassName:OsaLogoutLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:08:33 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaLogoutLogServiceImpl implements OsaLogoutLogService {
	@Resource
	private OsaLogoutLogMapper mapper;
	
	@Override
	public void insert(OsaLogoutLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaLogoutLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaLogoutLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  