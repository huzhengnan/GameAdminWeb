package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGmNoticeLeftMapper;
import com.lyh.admin.model.OsaGmNoticeLeft;
import com.lyh.admin.service.OsaGmNoticeLeftService;

/** 
 * ClassName:OsaGmNoticeLeftServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:06:16 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGmNoticeLeftServiceImpl implements OsaGmNoticeLeftService {
	@Resource
	private OsaGmNoticeLeftMapper mapper;
	
	@Override
	public void insert(OsaGmNoticeLeft t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGmNoticeLeft t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGmNoticeLeft findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  