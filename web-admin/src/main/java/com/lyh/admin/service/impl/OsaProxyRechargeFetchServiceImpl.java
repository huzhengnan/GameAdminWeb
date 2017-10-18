package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaProxyRechargeFetchMapper;
import com.lyh.admin.model.OsaProxyRechargeFetch;
import com.lyh.admin.model.OsaProxyRechargeFetchExample;
import com.lyh.admin.service.OsaProxyRechargeFetchService;

/** 
 * ClassName:OsaProxyRechargeFetchServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:10:56 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaProxyRechargeFetchServiceImpl implements OsaProxyRechargeFetchService {
	@Resource
	private OsaProxyRechargeFetchMapper mapper;
	
	@Override
	public void insert(OsaProxyRechargeFetch t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaProxyRechargeFetch t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaProxyRechargeFetch findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<OsaProxyRechargeFetch> getProxyRechargeFetchList(int status) {
		// TODO Auto-generated method stub
		OsaProxyRechargeFetchExample example = new OsaProxyRechargeFetchExample();
		OsaProxyRechargeFetchExample.Criteria criteria = example.createCriteria();
		criteria.andStatusEqualTo(status);
		return mapper.selectByExample(example);
	}
	
}
  