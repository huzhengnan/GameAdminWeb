package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaUserGroupMapper;
import com.lyh.admin.model.OsaUserGroup;
import com.lyh.admin.service.OsaUserGroupService;

/** 
 * ClassName:OsaUserGroupServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:13:52 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaUserGroupServiceImpl implements OsaUserGroupService {
	
	@Resource
	private OsaUserGroupMapper mapper;
	@Override
	public void insert(OsaUserGroup t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaUserGroup t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaUserGroup findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  