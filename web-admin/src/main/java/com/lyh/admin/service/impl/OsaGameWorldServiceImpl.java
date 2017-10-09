package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaGameWorldMapper;
import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGameWorldExample;
import com.lyh.admin.service.OsaGameWorldService;

/** 
 * ClassName:OsaGameWorldServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:05:07 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaGameWorldServiceImpl implements OsaGameWorldService {
	@Resource
	private OsaGameWorldMapper mapper;
	@Override
	public void insert(OsaGameWorld t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaGameWorld t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaGameWorld findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public OsaGameWorld getWorldByWorldId(String worldId) {
		// TODO Auto-generated method stub
		OsaGameWorldExample example = new OsaGameWorldExample();
		OsaGameWorldExample.Criteria criteria = example.createCriteria();
		criteria.andWorldIdEqualTo(worldId);
		List<OsaGameWorld> list = mapper.selectByExample(example);
		return list.size() > 0 ? list.get(0) : null;
	}

	@Override
	public List<OsaGameWorld> getWorldList(int status) {
		// TODO Auto-generated method stub
		OsaGameWorldExample example = new OsaGameWorldExample();
		OsaGameWorldExample.Criteria criteria = example.createCriteria();
		criteria.andStatusEqualTo(""+status);
		example.setOrderByClause("id desc");
		return mapper.selectByExample(example);
	}
	
}
  