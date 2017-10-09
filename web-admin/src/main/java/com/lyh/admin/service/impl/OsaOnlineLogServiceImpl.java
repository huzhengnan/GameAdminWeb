package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaOnlineLogMapper;
import com.lyh.admin.model.OsaOnlineLog;
import com.lyh.admin.service.OsaOnlineLogService;

/** 
 * ClassName:OsaOnlineLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:09:37 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaOnlineLogServiceImpl implements OsaOnlineLogService {
	@Resource
	private OsaOnlineLogMapper mapper;
	
	@Override
	public void insert(OsaOnlineLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaOnlineLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaOnlineLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  