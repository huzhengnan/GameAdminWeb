package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGamePlayerMapper;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGamePlayerExample;
import com.lyh.admin.service.OsaGamePlayerService;

/** 
 * ClassName:OsaGamePlayerServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:04:27 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGamePlayerServiceImpl implements OsaGamePlayerService {
	@Resource
	private OsaGamePlayerMapper mapper;
	@Override
	public void insert(OsaGamePlayer t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGamePlayer t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGamePlayer findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public OsaGamePlayer getGamePlayerByOpenId(String openId) {
		// TODO Auto-generated method stub
		OsaGamePlayerExample example = new OsaGamePlayerExample();
		OsaGamePlayerExample.Criteria criteria = example.createCriteria();
		criteria.andOpenIdEqualTo(openId);
		List<OsaGamePlayer> list =  mapper.selectByExample(example);
		return list.size() > 0? list.get(0) : null;
	}
	
}
  