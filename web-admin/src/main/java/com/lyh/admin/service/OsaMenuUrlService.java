package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaMenuUrl;

/** 
 * ClassName:OsaMenuUrlService <br/> 
 * TODO:菜单url
 * Date:     2017年10月5日 下午4:37:50 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaMenuUrlService extends BaseService<OsaMenuUrl> {
	
	/** 
	 * findMenuUrlByModuleId:(). <br/> 
	 * TODO().<br/> 
	 * module找到菜单
	 * @author lyh 
	 * @param moduleId
	 * @return 
	 */  
	List<OsaMenuUrl> findMenuUrlByModuleId(long moduleId);
	/** 
	 * findMenuUrlByModuleIdAndOnLine:(). <br/> 
	 * TODO().<br/> 
	 * 
	 * @author lyh 
	 * @param moduleId
	 * @param online
	 * @return 
	 */  
	List<OsaMenuUrl> findMenuUrlByModuleIdAndOnLine(long moduleId,int online);
	/** 
	 * findMenuUrlByModuleIdAndOnlineAndShow:(). <br/> 
	 * TODO().<br/> 
	 * 
	 * @author lyh 
	 * @param moduleId
	 * @param online
	 * @param isShow
	 * @return 
	 */  
	List<OsaMenuUrl> findMenuUrlByModuleIdAndOnlineAndShow(long moduleId,int online,int isShow);
}
  