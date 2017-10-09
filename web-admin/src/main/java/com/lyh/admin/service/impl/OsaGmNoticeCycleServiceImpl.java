package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGmNoticeCycleMapper;
import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.service.OsaGmNoticeCycleService;

/** 
 * ClassName:OsaGmNoticeCycleServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:05:48 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGmNoticeCycleServiceImpl implements OsaGmNoticeCycleService {
	@Resource
	private OsaGmNoticeCycleMapper mapper;
	@Override
	public void insert(OsaGmNoticeCycle t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGmNoticeCycle t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGmNoticeCycle findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public String sendNotice(OsaGmNoticeCycle gmtNoticeCycle, boolean record) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
  