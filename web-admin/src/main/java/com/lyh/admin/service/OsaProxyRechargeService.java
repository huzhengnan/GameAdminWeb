package com.lyh.admin.service;

import java.util.List;

import com.lyh.admin.model.OsaProxyRecharge;

/** 
 * ClassName:OsaProxyRechargeService <br/> 
 * TODO:代理充值记录
 * Date:     2017年10月5日 下午4:41:21 <br/> 
 * @author   lyh 
 * @version    
 */
public interface OsaProxyRechargeService extends BaseService<OsaProxyRecharge> {
	
	/** 
	 * getMyBuyCardList:(). <br/> 
	 * TODO().<br/> 
	 * 我的购卡记录
	 * @author lyh 
	 * @param userName
	 * @return 
	 */  
	List<OsaProxyRecharge> getMyBuyCardList(String userName);
	
	
	/** 
	 * getMySellCardList:(). <br/> 
	 * TODO().<br/> 
	 * 我的售卡记录
	 * @author lyh 
	 * @param fatherName
	 * @return 
	 */  
	List<OsaProxyRecharge> getMySellCardList(String fatherName);
	
	
	/** 
	 * getPlayerRechargeList:(). <br/> 
	 * TODO().<br/> 
	 * 玩家充值
	 * @author lyh 
	 * @param online
	 * @return 
	 */  
	List<OsaProxyRecharge> getPlayerRechargeList(String fatherName,int online);
	
	/** 
	 * getProxyRechargeByOrder:(). <br/> 
	 * TODO().<br/> 
	 *  
	 * @author lyh 
	 * @param orderId
	 * @return 
	 */  
	OsaProxyRecharge getProxyRechargeByOrder(String orderId);
	
	/** 
	 * getSettlementListByFetch:(). <br/> 
	 * TODO().<br/> 
	 * 获取结算列表
	 * @author lyh 
	 * @param isFetch
	 * @return 
	 */  
	List<OsaProxyRecharge> getSettlementListByFetch(String proxyName,int isFetch);
	
	/** 
	 * getProxyRechargeByIds:(). <br/> 
	 * TODO().<br/> 
	 * 得到充值列表
	 * @author lyh 
	 * @param ids
	 * @return 
	 */  
	List<OsaProxyRecharge> getProxyRechargeByIds(List<Long> ids);

}
  