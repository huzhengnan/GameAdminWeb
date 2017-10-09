package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaUserMapper;
import com.lyh.admin.model.OsaUser;
import com.lyh.admin.model.OsaUserExample;
import com.lyh.admin.model.OsaUserGroupExample;
import com.lyh.admin.service.OsaUserService;



/** 
 * ClassName:OsaUserServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:14:16 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaUserServiceImpl implements OsaUserService {
	
	@Resource
	private OsaUserMapper mapper;
	@Override
	public void insert(OsaUser t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaUser t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaUser findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public OsaUser findUserByUserName(String userName) {
		// TODO Auto-generated method stub
		OsaUserExample example = new OsaUserExample();
		OsaUserExample.Criteria  criteria= example.createCriteria();
		criteria.andUserNameEqualTo(userName);
		List<OsaUser> list = mapper.selectByExample(example);
		return list.isEmpty() ? null : list.get(0) ;
	}
	
}
  