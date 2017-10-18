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
		return list.size() <= 0? null : list.get(0) ;
	}

	@Override
	public List<OsaUser> getUserList(int status) {
		// TODO Auto-generated method stub
		OsaUserExample example = new OsaUserExample();
		OsaUserExample.Criteria  criteria= example.createCriteria();
		if (status > -1){
			criteria.andStatusEqualTo((byte)status);
		}
		return mapper.selectByExample(example);
	}

	@Override
	public OsaUser getUsersByInviteCode(String inviteCode) {
		// TODO Auto-generated method stub
		OsaUserExample example = new OsaUserExample();
		OsaUserExample.Criteria  criteria= example.createCriteria();
		criteria.andInviteCodeEqualTo(inviteCode);
		criteria.andStatusEqualTo((byte)1);
		List<OsaUser> list = mapper.selectByExample(example);
		return list.size() > 0 ? list.get(0) : null; 
	}

	@Override
	public List<OsaUser> getUsersByFatherName(String fatherName) {
		// TODO Auto-generated method stub
		OsaUserExample example = new OsaUserExample();
		OsaUserExample.Criteria  criteria= example.createCriteria();
		criteria.andFatherNameEqualTo(fatherName);
		criteria.andStatusEqualTo((byte)1);
		return mapper.selectByExample(example);
	}

	@Override
	public OsaUser getUserByPhone(long phone) {
		// TODO Auto-generated method stub
		OsaUserExample example = new OsaUserExample();
		OsaUserExample.Criteria  criteria= example.createCriteria();
		criteria.andMobileEqualTo(phone);
		criteria.andStatusEqualTo((byte)1);
		List<OsaUser> list = mapper.selectByExample(example);
		return list.size() > 0 ? list.get(0) : null; 
	}


	
}
  