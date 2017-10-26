package com.lyh.admin.entity;

import java.util.Date;

/**
 * ClassName:MobileUser <br/>
 * TODO: Date: 2017年10月26日 上午11:07:34 <br/>
 * 
 * @author lyh
 * @version
 */
public class MobileUser {
	/**
	  * 
	  */
	private Long id;
	
	/**
	 * 
	 */
	private String userName;
	
	/**
	 * 
	 */
	private String password;
	
	/**
	 * 
	 */
	private String realName;
	
	/**
	 * 
	 */
	private Long mobile;
	
	/**
	 * 
	 */
	private String email;
	
	/**
	 * 
	 */
	private String userDesc;
	
	/**
	 * 登录时间
	 */
	private Date loginTime;
	
	/**
	 * 用户状态
	 */
	private Byte status;
	
	/**
	 * 
	 */
	private String loginIp;
	
	/**
	 * 
	 */
	private Integer userGroup;
	
	/**
	 * 主题模板
	 */
	private String template;
	
	/**
	 * 快捷菜单
	 */
	private String shortcuts;
	
	/**
	 * 是否显示quicknote
	 */
	private Integer showQuicknote;
	
	/**
	 * 微信号
	 */
	private String wechat;
	
	/**
	 * 1=代理
	 */
	private Integer isProxy;
	
	/**
	 * 银行卡号
	 */
	private String bank;
	
	/**
	 * 邀请码
	 */
	private String inviteCode;
	
	/**
	 * 代理等级
	 */
	private Integer proxyLevel;
	
	/**
	 * 父代理名称
	 */
	private String fatherName;
	
	/**
	 * 剩余金币
	 */
	private String remainMoney;
	
	/**
	 * 绑定的玩家id
	 */
	private Long bindPlayerId;
	
	/**
	 * 创建时间
	 */
	private Date createTime;
	
	/**
	 * 剩余未提现
	 */
	private Double remainFetchMoney;
	
	/**
	 * 总提现金额
	 */
	private Double totalFetchMoney;
	
	/** 推广人数 **/
	private int playerNums;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRealName() {
		return realName;
	}
	
	public void setRealName(String realName) {
		this.realName = realName;
	}
	
	public Long getMobile() {
		return mobile;
	}
	
	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUserDesc() {
		return userDesc;
	}
	
	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}
	
	public Date getLoginTime() {
		return loginTime;
	}
	
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	
	public Byte getStatus() {
		return status;
	}
	
	public void setStatus(Byte status) {
		this.status = status;
	}
	
	public String getLoginIp() {
		return loginIp;
	}
	
	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}
	
	public Integer getUserGroup() {
		return userGroup;
	}
	
	public void setUserGroup(Integer userGroup) {
		this.userGroup = userGroup;
	}
	
	public String getTemplate() {
		return template;
	}
	
	public void setTemplate(String template) {
		this.template = template;
	}
	
	public String getShortcuts() {
		return shortcuts;
	}
	
	public void setShortcuts(String shortcuts) {
		this.shortcuts = shortcuts;
	}
	
	public Integer getShowQuicknote() {
		return showQuicknote;
	}
	
	public void setShowQuicknote(Integer showQuicknote) {
		this.showQuicknote = showQuicknote;
	}
	
	public String getWechat() {
		return wechat;
	}
	
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	
	public Integer getIsProxy() {
		return isProxy;
	}
	
	public void setIsProxy(Integer isProxy) {
		this.isProxy = isProxy;
	}
	
	public String getBank() {
		return bank;
	}
	
	public void setBank(String bank) {
		this.bank = bank;
	}
	
	public String getInviteCode() {
		return inviteCode;
	}
	
	public void setInviteCode(String inviteCode) {
		this.inviteCode = inviteCode;
	}
	
	public Integer getProxyLevel() {
		return proxyLevel;
	}
	
	public void setProxyLevel(Integer proxyLevel) {
		this.proxyLevel = proxyLevel;
	}
	
	public String getFatherName() {
		return fatherName;
	}
	
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	
	public String getRemainMoney() {
		return remainMoney;
	}
	
	public void setRemainMoney(String remainMoney) {
		this.remainMoney = remainMoney;
	}
	
	public Long getBindPlayerId() {
		return bindPlayerId;
	}
	
	public void setBindPlayerId(Long bindPlayerId) {
		this.bindPlayerId = bindPlayerId;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Double getRemainFetchMoney() {
		return remainFetchMoney;
	}
	
	public void setRemainFetchMoney(Double remainFetchMoney) {
		this.remainFetchMoney = remainFetchMoney;
	}
	
	public Double getTotalFetchMoney() {
		return totalFetchMoney;
	}
	
	public void setTotalFetchMoney(Double totalFetchMoney) {
		this.totalFetchMoney = totalFetchMoney;
	}
	
	public int getPlayerNums() {
		return playerNums;
	}
	
	public void setPlayerNums(int playerNums) {
		this.playerNums = playerNums;
	}
	
}
