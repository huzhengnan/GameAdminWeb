package com.lyh.admin.service;

import com.lyh.admin.model.OsaUser;

/** 
 * ClassName:OsaUserService <br/> 
 * TODO:管理平台的玩家
 * Date:     2017年10月5日 下午4:47:32 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaUserService extends BaseService<OsaUser> {
	
	/** 
	 * findUserByUserName:(). <br/> 
	 * TODO().<br/> 
	 * 找到用户
	 * @author lyh 
	 * @param userName
	 * @return 
	 */  
	OsaUser findUserByUserName(String userName);
}
  