package com.lyh.admin.model;

import java.io.Serializable;

public class OsaCreateroleLog implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 
     */
    private String worldId;

    /**
     * 
     */
    private String userIp;

    /**
     * 
     */
    private String time;

    /**
     * 
     */
    private String openId;

    /**
     * 
     */
    private String roleName;

    /**
     * 
     */
    private String addTime;

    /**
     * 应用id
     */
    private String appId;

    /**
     * osa_createrole_log
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWorldId() {
        return worldId;
    }

    public void setWorldId(String worldId) {
        this.worldId = worldId == null ? null : worldId.trim();
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp == null ? null : userIp.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId == null ? null : openId.trim();
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime == null ? null : addTime.trim();
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId == null ? null : appId.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", worldId=").append(worldId);
        sb.append(", userIp=").append(userIp);
        sb.append(", time=").append(time);
        sb.append(", openId=").append(openId);
        sb.append(", roleName=").append(roleName);
        sb.append(", addTime=").append(addTime);
        sb.append(", appId=").append(appId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}