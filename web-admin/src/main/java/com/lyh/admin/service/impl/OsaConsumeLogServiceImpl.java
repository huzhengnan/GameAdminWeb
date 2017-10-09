package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaConsumeLogMapper;
import com.lyh.admin.model.OsaConsumeLog;
import com.lyh.admin.service.OsaConsumeLogService;

/** 
 * ClassName:OsaConsumeLogServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:02:58 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaConsumeLogServiceImpl implements OsaConsumeLogService {
	
	@Resource
	private OsaConsumeLogMapper mapper;
	
	@Override
	public void insert(OsaConsumeLog t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaConsumeLog t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaConsumeLog findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  