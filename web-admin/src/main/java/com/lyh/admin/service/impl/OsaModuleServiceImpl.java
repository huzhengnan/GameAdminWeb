package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaModuleMapper;
import com.lyh.admin.model.OsaModule;
import com.lyh.admin.service.OsaModuleService;

/** 
 * ClassName:OsaModuleServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:09:19 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaModuleServiceImpl implements OsaModuleService {
	@Resource
	private OsaModuleMapper mapper;
	@Override
	public void insert(OsaModule t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaModule t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaModule findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  