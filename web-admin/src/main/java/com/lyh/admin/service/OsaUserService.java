package com.lyh.admin.service;

import java.util.List;

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
	
	/** 
	 * getUserList:(). <br/> 
	 * TODO().<br/> 
	 * 得到全部玩家
	 * @author lyh 
	 * @return 
	 */  
	List<OsaUser>getUserList(int status);
	
	
	/** 
	 * getUsersByInviteCode:(). <br/> 
	 * TODO().<br/> 
	 * 获取代理用邀请码
	 * @author lyh 
	 * @param inviteCode
	 * @return 
	 */  
	OsaUser getUsersByInviteCode(String inviteCode);
	
	
	/** 
	 * getUsersByFatherName:(). <br/> 
	 * TODO().<br/> 
	 * 获取代理列表用上级代理名
	 * @author lyh 
	 * @param fatherName
	 * @return 
	 */  
	List<OsaUser> getUsersByFatherName(String fatherName);
	
	

}
  