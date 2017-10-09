package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaMenuUrlMapper;
import com.lyh.admin.model.OsaMenuUrl;
import com.lyh.admin.model.OsaMenuUrlExample;
import com.lyh.admin.service.OsaMenuUrlService;

/** 
 * ClassName:OsaMenuUrlServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:08:54 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaMenuUrlServiceImpl implements OsaMenuUrlService {
	@Resource
	private OsaMenuUrlMapper mapper;
	
	@Override
	public void insert(OsaMenuUrl t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaMenuUrl t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaMenuUrl findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<OsaMenuUrl> findMenuUrlByModuleId(long moduleId) {
		// TODO Auto-generated method stub
		OsaMenuUrlExample example = new OsaMenuUrlExample();
		OsaMenuUrlExample.Criteria criteria = example.createCriteria();
		criteria.andModuleIdEqualTo(moduleId);
		return mapper.selectByExample(example);
	}

	@Override
	public List<OsaMenuUrl> findMenuUrlByModuleIdAndOnLine(long moduleId, int online) {
		// TODO Auto-generated method stub
		OsaMenuUrlExample example = new OsaMenuUrlExample();
		OsaMenuUrlExample.Criteria criteria = example.createCriteria();
		criteria.andModuleIdEqualTo(moduleId);
		criteria.andOnlineEqualTo(online);
		return mapper.selectByExample(example);

	}

	@Override
	public List<OsaMenuUrl> findMenuUrlByModuleIdAndOnlineAndShow(long moduleId, int online, int isShow) {
		// TODO Auto-generated method stub
		OsaMenuUrlExample example = new OsaMenuUrlExample();
		OsaMenuUrlExample.Criteria criteria = example.createCriteria();
		criteria.andModuleIdEqualTo(moduleId);
		criteria.andOnlineEqualTo(online);
		criteria.andIsShowEqualTo((byte)isShow);
		return mapper.selectByExample(example);
	}
	
}
  