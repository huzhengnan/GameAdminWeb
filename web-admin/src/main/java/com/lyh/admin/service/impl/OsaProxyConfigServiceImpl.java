package com.lyh.admin.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaProxyConfigMapper;
import com.lyh.admin.model.OsaProxyConfig;
import com.lyh.admin.model.OsaProxyConfigExample;
import com.lyh.admin.service.OsaProxyConfigService;

/** 
 * ClassName:OsaProxyConfigServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:10:22 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaProxyConfigServiceImpl implements OsaProxyConfigService {
	private OsaProxyConfigMapper mapper;
	@Override
	public void insert(OsaProxyConfig t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaProxyConfig t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaProxyConfig findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<OsaProxyConfig> getProxyConfigList() {
		// TODO Auto-generated method stub
		OsaProxyConfigExample example = new OsaProxyConfigExample();

		return mapper.selectByExample(example);
	}
	
}
  