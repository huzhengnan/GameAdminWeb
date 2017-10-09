package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaSysLogMapper;
import com.lyh.admin.model.OsaSysLog;
import com.lyh.admin.service.OsaSysLogService;

/** 
 * ClassName:OsaSysLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:13:35 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaSysLogServiceImpl implements OsaSysLogService {
	@Resource
	private OsaSysLogMapper mapper;
	@Override
	public void insert(OsaSysLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaSysLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaSysLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  