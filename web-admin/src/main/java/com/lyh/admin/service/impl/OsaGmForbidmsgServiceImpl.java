package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGmForbidmsgMapper;
import com.lyh.admin.model.OsaGmForbidmsg;
import com.lyh.admin.service.OsaGmForbidmsgService;

/** 
 * ClassName:OsaGmForbidmsgServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:05:25 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGmForbidmsgServiceImpl implements OsaGmForbidmsgService {
	@Resource
	private OsaGmForbidmsgMapper mapper;
	
	@Override
	public void insert(OsaGmForbidmsg t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGmForbidmsg t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGmForbidmsg findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  