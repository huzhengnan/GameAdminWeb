package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaQuickNoteMapper;
import com.lyh.admin.model.OsaQuickNote;
import com.lyh.admin.service.OsaQuickNoteService;

/** 
 * ClassName:OsaQuickNoteServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:12:26 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaQuickNoteServiceImpl implements OsaQuickNoteService {
	@Resource
	private OsaQuickNoteMapper mapper;
	@Override
	public void insert(OsaQuickNote t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaQuickNote t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaQuickNote findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  