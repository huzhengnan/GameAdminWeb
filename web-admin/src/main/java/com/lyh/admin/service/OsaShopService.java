package com.lyh.admin.service;

import com.lyh.admin.model.OsaShop;

/** 
 * ClassName:OsaShopService <br/> 
 * TODO:商城
 * Date:     2017年10月5日 下午4:45:52 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaShopService extends BaseService<OsaShop> {
	
	/** 
	 * findShopGoodsByPrice:(). <br/> 
	 * TODO().<br/> 
	 * 价格找商品
	 * @author lyh 
	 * @param price
	 * @return 
	 */  
	OsaShop findShopGoodsByPrice(double price);
}
  