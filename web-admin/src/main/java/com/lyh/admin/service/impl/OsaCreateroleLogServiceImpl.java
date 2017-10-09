package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaCreateroleLogMapper;
import com.lyh.admin.model.OsaCreateroleLog;
import com.lyh.admin.service.OsaCreateroleLogService;

/** 
 * ClassName:OsaCreateroleLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:03:34 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaCreateroleLogServiceImpl implements OsaCreateroleLogService {
	@Resource
	private OsaCreateroleLogMapper mapper;
	@Override
	public void insert(OsaCreateroleLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaCreateroleLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaCreateroleLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  