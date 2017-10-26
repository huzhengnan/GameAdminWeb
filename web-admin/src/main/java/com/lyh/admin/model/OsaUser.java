package com.lyh.admin.model;

import java.io.Serializable;
import java.util.Date;

public class OsaUser implements Serializable {
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

    /**
     * osa_user
     */
    private static final long serialVersionUID = 1L;

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
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName == null ? null : realName.trim();
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
        this.email = email == null ? null : email.trim();
    }

    public String getUserDesc() {
        return userDesc;
    }

    public void setUserDesc(String userDesc) {
        this.userDesc = userDesc == null ? null : userDesc.trim();
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
        this.loginIp = loginIp == null ? null : loginIp.trim();
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
        this.template = template == null ? null : template.trim();
    }

    public String getShortcuts() {
        return shortcuts;
    }

    public void setShortcuts(String shortcuts) {
        this.shortcuts = shortcuts == null ? null : shortcuts.trim();
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
        this.wechat = wechat == null ? null : wechat.trim();
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
        this.bank = bank == null ? null : bank.trim();
    }

    public String getInviteCode() {
        return inviteCode;
    }

    public void setInviteCode(String inviteCode) {
        this.inviteCode = inviteCode == null ? null : inviteCode.trim();
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
        this.fatherName = fatherName == null ? null : fatherName.trim();
    }

    public String getRemainMoney() {
        return remainMoney;
    }

    public void setRemainMoney(String remainMoney) {
        this.remainMoney = remainMoney == null ? null : remainMoney.trim();
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userName=").append(userName);
        sb.append(", password=").append(password);
        sb.append(", realName=").append(realName);
        sb.append(", mobile=").append(mobile);
        sb.append(", email=").append(email);
        sb.append(", userDesc=").append(userDesc);
        sb.append(", loginTime=").append(loginTime);
        sb.append(", status=").append(status);
        sb.append(", loginIp=").append(loginIp);
        sb.append(", userGroup=").append(userGroup);
        sb.append(", template=").append(template);
        sb.append(", shortcuts=").append(shortcuts);
        sb.append(", showQuicknote=").append(showQuicknote);
        sb.append(", wechat=").append(wechat);
        sb.append(", isProxy=").append(isProxy);
        sb.append(", bank=").append(bank);
        sb.append(", inviteCode=").append(inviteCode);
        sb.append(", proxyLevel=").append(proxyLevel);
        sb.append(", fatherName=").append(fatherName);
        sb.append(", remainMoney=").append(remainMoney);
        sb.append(", bindPlayerId=").append(bindPlayerId);
        sb.append(", createTime=").append(createTime);
        sb.append(", remainFetchMoney=").append(remainFetchMoney);
        sb.append(", totalFetchMoney=").append(totalFetchMoney);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}