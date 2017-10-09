package com.lyh.admin.model;

import java.io.Serializable;
import java.util.Date;

public class OsaGamePlayer implements Serializable {
    /**
     * 
     */
    private Long playerId;

    /**
     * 
     */
    private String openId;

    /**
     * 
     */
    private String worldId;

    /**
     * 
     */
    private String roleName;

    /**
     * 
     */
    private Integer level;

    /**
     * 
     */
    private Double curMoney;

    /**
     * 
     */
    private Double totalMoney;

    /**
     * 
     */
    private Integer isonline;

    /**
     * 
     */
    private Integer status;

    /**
     * 
     */
    private String lastLoginIp;

    /**
     * 
     */
    private String lastLoginTime;

    /**
     * 
     */
    private Integer vipLevel;

    /**
     * 应用id
     */
    private String appId;

    /**
     * 邀请码
     */
    private String inviteCode;

    /**
     * 姓名
     */
    private String realName;

    /**
     * 身份证id
     */
    private String cardId;

    /**
     * 邀请时间
     */
    private Date inviteTime;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * osa_game_player
     */
    private static final long serialVersionUID = 1L;

    public Long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Long playerId) {
        this.playerId = playerId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId == null ? null : openId.trim();
    }

    public String getWorldId() {
        return worldId;
    }

    public void setWorldId(String worldId) {
        this.worldId = worldId == null ? null : worldId.trim();
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Double getCurMoney() {
        return curMoney;
    }

    public void setCurMoney(Double curMoney) {
        this.curMoney = curMoney;
    }

    public Double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(Double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Integer getIsonline() {
        return isonline;
    }

    public void setIsonline(Integer isonline) {
        this.isonline = isonline;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp == null ? null : lastLoginIp.trim();
    }

    public String getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(String lastLoginTime) {
        this.lastLoginTime = lastLoginTime == null ? null : lastLoginTime.trim();
    }

    public Integer getVipLevel() {
        return vipLevel;
    }

    public void setVipLevel(Integer vipLevel) {
        this.vipLevel = vipLevel;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId == null ? null : appId.trim();
    }

    public String getInviteCode() {
        return inviteCode;
    }

    public void setInviteCode(String inviteCode) {
        this.inviteCode = inviteCode == null ? null : inviteCode.trim();
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName == null ? null : realName.trim();
    }

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId == null ? null : cardId.trim();
    }

    public Date getInviteTime() {
        return inviteTime;
    }

    public void setInviteTime(Date inviteTime) {
        this.inviteTime = inviteTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", playerId=").append(playerId);
        sb.append(", openId=").append(openId);
        sb.append(", worldId=").append(worldId);
        sb.append(", roleName=").append(roleName);
        sb.append(", level=").append(level);
        sb.append(", curMoney=").append(curMoney);
        sb.append(", totalMoney=").append(totalMoney);
        sb.append(", isonline=").append(isonline);
        sb.append(", status=").append(status);
        sb.append(", lastLoginIp=").append(lastLoginIp);
        sb.append(", lastLoginTime=").append(lastLoginTime);
        sb.append(", vipLevel=").append(vipLevel);
        sb.append(", appId=").append(appId);
        sb.append(", inviteCode=").append(inviteCode);
        sb.append(", realName=").append(realName);
        sb.append(", cardId=").append(cardId);
        sb.append(", inviteTime=").append(inviteTime);
        sb.append(", createTime=").append(createTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}