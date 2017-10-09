package com.lyh.admin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaShopMapper;
import com.lyh.admin.model.OsaShop;
import com.lyh.admin.service.OsaShopService;

/** 
 * ClassName:OsaShopServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:13:14 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaShopServiceImpl implements OsaShopService {
	@Resource
	private OsaShopMapper mapper;
	
	@Override
	public void insert(OsaShop t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaShop t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaShop findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}
	
}
  