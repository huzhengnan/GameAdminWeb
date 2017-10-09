package com.lyh.admin.model;

import java.io.Serializable;

public class OsaPlayerRegisterLog implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 帐号
     */
    private String openId;

    /**
     * 
     */
    private String worldId;

    /**
     * 
     */
    private String lastloginIp;

    /**
     * 
     */
    private String lastlogintime;

    /**
     * 
     */
    private String info;

    /**
     * 应用id
     */
    private String appId;

    /**
     * osa_player_register_log
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getLastloginIp() {
        return lastloginIp;
    }

    public void setLastloginIp(String lastloginIp) {
        this.lastloginIp = lastloginIp == null ? null : lastloginIp.trim();
    }

    public String getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(String lastlogintime) {
        this.lastlogintime = lastlogintime == null ? null : lastlogintime.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
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
        sb.append(", openId=").append(openId);
        sb.append(", worldId=").append(worldId);
        sb.append(", lastloginIp=").append(lastloginIp);
        sb.append(", lastlogintime=").append(lastlogintime);
        sb.append(", info=").append(info);
        sb.append(", appId=").append(appId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}