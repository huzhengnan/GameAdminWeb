package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaShopMapper;
import com.lyh.admin.model.OsaShop;
import com.lyh.admin.model.OsaShopExample;
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

	@Override
	public OsaShop findShopGoodsByPrice(double price) {
		// TODO Auto-generated method stub
		OsaShopExample example = new OsaShopExample();
		OsaShopExample.Criteria criteria =  example.createCriteria();
		criteria.andPriceEqualTo(price);
		List<OsaShop> list = mapper.selectByExample(example);
		return list.size() > 0 ?  list.get(0): null;
	}
	
}
  