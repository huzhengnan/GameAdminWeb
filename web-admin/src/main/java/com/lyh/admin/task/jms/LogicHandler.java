package com.lyh.admin.task.jms;

import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.lyh.admin.model.OsaConsumeLog;
import com.lyh.admin.model.OsaCreateroleLog;
import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaLoginLog;
import com.lyh.admin.model.OsaLogoutLog;
import com.lyh.admin.model.OsaOnlineLog;
import com.lyh.admin.model.OsaPlayerRegisterLog;
import com.lyh.admin.model.OsaRechargeLog;
import com.lyh.admin.service.OsaConsumeLogService;
import com.lyh.admin.service.OsaCreateroleLogService;
import com.lyh.admin.service.OsaGamePlayerService;
import com.lyh.admin.service.OsaGameWorldService;
import com.lyh.admin.service.OsaLoginLogService;
import com.lyh.admin.service.OsaLogoutLogService;
import com.lyh.admin.service.OsaOnlineLogService;
import com.lyh.admin.service.OsaPlayerRegisterLogService;
import com.lyh.admin.service.OsaRechargeLogService;
import com.lyh.admin.tools.IdGenerateUtils;
import com.lyh.admin.tools.ToolUtils;
import com.lyh.common.IMsgCode;
import com.lyh.dataup.log.CreateRoleLog;
import com.lyh.dataup.log.LoginLog;
import com.lyh.dataup.log.LoginOutLog;
import com.lyh.dataup.log.OnLineNumLog;
import com.lyh.dataup.log.RechargeLog;
import com.lyh.dataup.log.RegisterLog;
import com.lyh.dataup.log.UseGoldLog;

/**
 * 日志上报的处理。。。
 */
@Component("logicHandler")
public class LogicHandler implements MessageListener {
	private Logger logger = LoggerFactory.getLogger(getClass());
	@Resource
	private OsaCreateroleLogService createrRoleLogService;
	@Resource
	private OsaConsumeLogService consumeLogService;
	
	@Resource
	private OsaGamePlayerService gamePlayerService;
	
	@Resource
	private OsaGameWorldService gameWorldService;
	@Resource
	private OsaLoginLogService loginLogService;
	
	@Resource
	private OsaLogoutLogService logoutLogService;
	
	@Resource
	private OsaOnlineLogService onlineLogService;
	
	@Resource
	private OsaPlayerRegisterLogService playerRegisterLogService;
	
	@Resource
	private OsaRechargeLogService rechargeLogService;
	/**String = openId**/  
	public static  Map<String,OsaGamePlayer> gameLogPlayer = new ConcurrentHashMap<String,OsaGamePlayer>();
//	DataUpHandleService dataUpHandleService;
	
	public void onMessage(Message message) {
		try {
			
			String msg = ((TextMessage) message).getText();
			String [] array =msg.split("\\|");
			if (array.length > 1){
				int head = Integer.parseInt(array[0]);
				String data = array[1].toString();
				if (head == IMsgCode.DATAUP_REGISTER_LOG_HTTP_PROTOCOL){//注册
					RegisterLog log = JSON.parseObject(data, RegisterLog.class);
					reg(log);
				}else if (head == IMsgCode.DATAUP_CREATE_ROLE_LOG_HTTP_PROTOCOL){//创建角色
					CreateRoleLog log = JSON.parseObject(data, CreateRoleLog.class);
					createRole(log);
				}else if (head == IMsgCode.DATAUP_LOGIN_LOG_HTTP_PROTOCOL){//角色登录
					LoginLog log = JSON.parseObject(data, LoginLog.class);
					login(log);
				}else if (head == IMsgCode.DATAUP_LOGIN_OUT_LOG_HTTP_PROTOCOL){//游戏退出
					
					LoginOutLog log = JSON.parseObject(data, LoginOutLog.class);
					out(log);
				}else if (head == IMsgCode.DATAUP_ONLINE_NUM_LOG_HTTP_PROTOCOL){//在线
					OnLineNumLog log = JSON.parseObject(data, OnLineNumLog.class);
					online(log);
				}else if (head == IMsgCode.DATAUP_RECHARGE_LOG_HTTP_PROTOCOL){//角色充值
					RechargeLog log = JSON.parseObject(data, RechargeLog.class);
					recharge(log);
				}else if(head == IMsgCode.DATAUP_USE_GOLD_LOG_HTTP_PROTOCOL){//使用道具,和金币
					UseGoldLog log = JSON.parseObject(data, UseGoldLog.class);
					consume(log);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			logger.error("数据收报接收有问题::"+e);
		}
	}
	
	/**
	 * 注册日志处理
	 * <p/>
	 * 注册日志 -- 每次登陆游戏，都写入了日志,非单次写入
	 * 
	 * @param obj
	 */
	private void reg(RegisterLog obj) {
		try {
			// 加注册账号 放弃日志
			OsaPlayerRegisterLog opOssQlzPassportReg = new OsaPlayerRegisterLog();
			opOssQlzPassportReg.setLastlogintime(ToolUtils.getDateString(new Date(obj.getRegisterTime())));
			opOssQlzPassportReg.setLastloginIp(obj.getUserIp());
			opOssQlzPassportReg.setOpenId(obj.getUserName());
			opOssQlzPassportReg.setAppId(obj.getAppId());
		//	opOssQlzPassportReg.setId(IdGenerateUtils.makeId());
			opOssQlzPassportReg.setWorldId(obj.getServerId());
			playerRegisterLogService.insert(opOssQlzPassportReg);
			

		} catch (Exception e) {
			logger.error("reg 处理异常", e);
		}
	}
	
	/**
	 * 角色创建日志处理
	 * <p/>
	 * 创建角色时产生 -- 单次日志
	 * 
	 * @param obj
	 */
	private void createRole(CreateRoleLog obj) {
		try {
			// 加日志
		//	OsaCreateroleLogService
			OsaCreateroleLog opOssQlzCreateroleLog = new OsaCreateroleLog();
			opOssQlzCreateroleLog.setAddTime(ToolUtils.getNowDate());
			opOssQlzCreateroleLog.setRoleName(obj.getRoleName());
			opOssQlzCreateroleLog.setOpenId(obj.getUserName());
			opOssQlzCreateroleLog.setWorldId(obj.getServerId());
			opOssQlzCreateroleLog.setUserIp(obj.getUserIp());
			opOssQlzCreateroleLog.setTime(ToolUtils.getDateString(new Date(obj.getCreateRoleTime())));
			opOssQlzCreateroleLog.setAppId(obj.getAppId());
			//opOssQlzCreateroleLog.setId(IdGenerateUtils.makeId());
			createrRoleLogService.insert(opOssQlzCreateroleLog);

			// 加账号
			//OsaGamePlayerService
			OsaGamePlayer opOssQlzPassport = new OsaGamePlayer();
			
			opOssQlzPassport.setOpenId(obj.getUserName()); // openid+区服
			opOssQlzPassport.setRoleName(obj.getRoleName());
			opOssQlzPassport.setWorldId(obj.getServerId());
			opOssQlzPassport.setAppId(obj.getAppId());
			opOssQlzPassport.setInviteCode(obj.getInviteCode());
			opOssQlzPassport.setCreateTime(new Date(obj.getCreateRoleTime()));
			
			opOssQlzPassport.setPlayerId(obj.getPlayerId());
			gamePlayerService.insert(opOssQlzPassport);
			
			gameLogPlayer.put(obj.getUserName(), opOssQlzPassport);
			
		} catch (Exception e) {
			logger.error("createRole 异常", e);
		}
	}
	
	/**
	 * 登陆日志处理
	 * <p/>
	 * 登陆时写入 -- 重复日志
	 * 
	 * @param obj
	 */
	private void login(LoginLog obj) {
		try {
			// 加日志OsaLoginLogService
			OsaLoginLog opOssQlzLoginLog = new OsaLoginLog();
			opOssQlzLoginLog.setAddtime(ToolUtils.getNowDate());
			opOssQlzLoginLog.setLevel(obj.getRoleLevel());
			opOssQlzLoginLog.setRoleName(obj.getRoleName());
			opOssQlzLoginLog.setOpenId(obj.getUserName());
			opOssQlzLoginLog.setWorldId(obj.getServerId());
			opOssQlzLoginLog.setUserIp(obj.getUserIp());
			opOssQlzLoginLog.setLoginTime((new Date(obj.getLoginTime())));
			opOssQlzLoginLog.setAppId(obj.getAppId());
			//opOssQlzLoginLog.setId(IdGenerateUtils.makeId());
			loginLogService.insert(opOssQlzLoginLog);
			
			
			OsaGamePlayer gamePlayer = gameLogPlayer.get(obj.getUserName());
			if (gamePlayer == null){
				OsaGamePlayer opOssQlzPassport = new OsaGamePlayer();
				
				opOssQlzPassport.setOpenId(obj.getUserName()); // openid+区服
				opOssQlzPassport.setRoleName(obj.getRoleName());
				opOssQlzPassport.setWorldId(obj.getServerId());
				opOssQlzPassport.setAppId(obj.getAppId());
				opOssQlzPassport.setInviteCode(obj.getInviteCode());
				opOssQlzPassport.setCreateTime(new Date(obj.getLoginTime()));
				
				opOssQlzPassport.setPlayerId(obj.getPlayerId());
				gamePlayerService.insert(opOssQlzPassport);
				gameLogPlayer.put(obj.getUserName(), opOssQlzPassport);
			}else{
				gamePlayer = new OsaGamePlayer();
				
				gamePlayer.setLevel(obj.getRoleLevel());
				gamePlayer.setIsonline(1);
				gamePlayer.setLastLoginIp(obj.getUserIp());
				gamePlayer.setLastLoginTime(ToolUtils.getDateString(new Date(obj.getLoginTime())));
				gamePlayer.setAppId(obj.getAppId());
				gamePlayer.setPlayerId(obj.getPlayerId());
				gamePlayerService.update(gamePlayer);
			}
		
		
		} catch (Exception e) {
			logger.error("login 异常", e);
		}
	}
	
	private void out(LoginOutLog obj) {
		try {
			// 计算在线时长
			int timeOnline = obj.getOnlineTime();
	
			
			// 加日志
			OsaLogoutLog opOssQlzOutLog = new OsaLogoutLog();
			opOssQlzOutLog.setAddtime(ToolUtils.getNowDate());
			opOssQlzOutLog.setLevel(obj.getRoleLevel());
			opOssQlzOutLog.setRoleName(obj.getRoleName());
			opOssQlzOutLog.setOpenId(obj.getUserName());
			opOssQlzOutLog.setWorldId(obj.getServerId());
			opOssQlzOutLog.setUserIp(obj.getUserIp());
			opOssQlzOutLog.setOnlineTime(timeOnline); // 在线时长
			opOssQlzOutLog.setOutTime(new Date(obj.getLoginOutTime()));
			opOssQlzOutLog.setVipLevel(obj.getVipLevel());
			opOssQlzOutLog.setAppId(obj.getAppId());
		//	opOssQlzOutLog.setId(IdGenerateUtils.makeId());
			
			logoutLogService.insert(opOssQlzOutLog);

			OsaGamePlayer gamePlayer = gameLogPlayer.get(obj.getUserName());
			if (gamePlayer != null){
				OsaGamePlayer opOssQlzPassport = new OsaGamePlayer();
				opOssQlzPassport.setLevel(obj.getRoleLevel());
				opOssQlzPassport.setIsonline(0);
				opOssQlzPassport.setVipLevel(obj.getVipLevel());
				gamePlayerService.update(gamePlayer);
			
			}
		} catch (Exception e) {
			logger.error("out 异常：", e);
		}
	}
	
	/**
	 * 充值日志
	 * 
	 * @param obj
	 */
	private void recharge(RechargeLog obj) {
		try {
			// 加日志
			OsaRechargeLog rechargeLog = new OsaRechargeLog();
			rechargeLog.setAddtime(ToolUtils.getNowDate());
			rechargeLog.setLevel(obj.getRoleLevel());
			rechargeLog.setRolename(obj.getRoleName());
			rechargeLog.setOpenid(obj.getUserName());
			rechargeLog.setWorldid(obj.getServerId());
			rechargeLog.setMoneyadd((double) obj.getGoldAdd());
			rechargeLog.setMoneyafter((double) obj.getGoldAfter());
			rechargeLog.setMoneybefore((double) obj.getGoldBefore());
			rechargeLog.setTime(ToolUtils.getDateString(new Date(obj.getPayTime())));
			rechargeLog.setSfrom(obj.getRechargeChannel());
			rechargeLog.setBillon(obj.getBillOrder());
			rechargeLog.setAppId(obj.getAppId());
			//rechargeLog.setId(IdGenerateUtils.makeId());
			rechargeLogService.insert(rechargeLog);
	
			OsaGamePlayer gamePlayer = gameLogPlayer.get(obj.getUserName());
			if (gamePlayer != null){
				OsaGamePlayer opOssQlzPassport = new OsaGamePlayer();
				opOssQlzPassport.setLevel(obj.getRoleLevel());
				opOssQlzPassport.setCurMoney((double) obj.getGoldAfter());
//				if (obj.getBillOrder() != null && !obj.getBillOrder().contains("lyh")) { // 排除内部充值
//					opOssQlzPassport.setLastPayTime(ToolUtils.getDateString(new Date(obj.getPayTime())));
//					if (DataUpHandle.passports.get(opOssQlzPassport.getOpenid()).getFristpaytime() == null) { // 确定首冲时间
//						opOssQlzPassport.setFristpaytime(Tools.getDateString(new Date(obj.getPayTime())));
//					}
//				}
				gamePlayerService.update(gamePlayer);
			
			}

		} catch (Exception e) {
			logger.error("recharge 日志", e);
		}
	}
	
	/**
	 * 消费日志
	 * 
	 * @param obj
	 */
	private void consume(UseGoldLog obj) {
		try {
			
			// 加日志OsaConsumeLogService
			OsaConsumeLog opOssQlzConsumeLog = new OsaConsumeLog();
			opOssQlzConsumeLog.setAddTime(ToolUtils.getNowDate());
			opOssQlzConsumeLog.setLevel(obj.getRoleLevel());
			opOssQlzConsumeLog.setRoleName(obj.getRoleName());
			opOssQlzConsumeLog.setOpenId(obj.getUserName());
			opOssQlzConsumeLog.setWorldId(obj.getServerId());
			opOssQlzConsumeLog.setLostMoney((double) obj.getLostGold());
			opOssQlzConsumeLog.setMoneyAfter((double) obj.getGoldAfter());
			opOssQlzConsumeLog.setMoneyBefore((double) obj.getGoldBefore());
			opOssQlzConsumeLog.setTime(ToolUtils.getDateString(new Date(obj.getUseGoldTime())));
			opOssQlzConsumeLog.setItemId(obj.getItemId() + "");
			opOssQlzConsumeLog.setItemName(obj.getItemName());
			opOssQlzConsumeLog.setItemNum(obj.getItemNum());
			opOssQlzConsumeLog.setItemType(obj.getItemType() + "");
			opOssQlzConsumeLog.setAppId(obj.getAppId());
		//	opOssQlzConsumeLog.setId(IdGenerateUtils.makeId());
			consumeLogService.insert(opOssQlzConsumeLog);
			OsaGamePlayer gamePlayer = gameLogPlayer.get(obj.getUserName());
			if (gamePlayer != null){
				OsaGamePlayer opOssQlzPassport = new OsaGamePlayer();
				opOssQlzPassport.setLevel(obj.getRoleLevel());
				opOssQlzPassport.setCurMoney((double) obj.getGoldAfter());
//				if (obj.getBillOrder() != null && !obj.getBillOrder().contains("lyh")) { // 排除内部充值
//					opOssQlzPassport.setLastPayTime(ToolUtils.getDateString(new Date(obj.getPayTime())));
//					if (DataUpHandle.passports.get(opOssQlzPassport.getOpenid()).getFristpaytime() == null) { // 确定首冲时间
//						opOssQlzPassport.setFristpaytime(Tools.getDateString(new Date(obj.getPayTime())));
//					}
//				}
				gamePlayerService.update(gamePlayer);
			
			}
			
			
		} catch (Exception e) {
			logger.error("consume 异常", e);
		}
	}
	
	private void online(OnLineNumLog obj) {
		// 加日志OsaOnlineLogService
		OsaOnlineLog opOssQlzOnlinecurLog = new OsaOnlineLog();
		opOssQlzOnlinecurLog.setWorldId(obj.getServerId());
		opOssQlzOnlinecurLog.setAddtime(ToolUtils.getDateString(new Date(obj.getRecordTime())));
		opOssQlzOnlinecurLog.setOnlineNum(obj.getOnlineNum());
		opOssQlzOnlinecurLog.setAppId(obj.getAppId());
	//	opOssQlzOnlinecurLog.setId(IdGenerateUtils.makeId());
		onlineLogService.insert(opOssQlzOnlinecurLog);
	}
}
