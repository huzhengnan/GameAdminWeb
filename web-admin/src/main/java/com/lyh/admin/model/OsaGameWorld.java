package com.lyh.admin.model;

import java.io.Serializable;
import java.util.Date;

public class OsaGameWorld implements Serializable {
    /**
     * 内部编号
     */
    private Long id;

    /**
     * 
     */
    private String appId;

    /**
     * 
     */
    private String wName;

    /**
     * 唯一
     */
    private String worldId;

    /**
     * 
     */
    private String status;

    /**
     * 
     */
    private String domain;

    /**
     * 
     */
    private String ip;

    /**
     * 
     */
    private String serverUrl;

    /**
     * 
     */
    private String info;

    /**
     * 1: 是 0：不是
     */
    private String ismingle;

    /**
     * 
     */
    private Date time;

    /**
     * 
     */
    private Date openTime;

    /**
     * osa_game_world
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId == null ? null : appId.trim();
    }

    public String getwName() {
        return wName;
    }

    public void setwName(String wName) {
        this.wName = wName == null ? null : wName.trim();
    }

    public String getWorldId() {
        return worldId;
    }

    public void setWorldId(String worldId) {
        this.worldId = worldId == null ? null : worldId.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain == null ? null : domain.trim();
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getServerUrl() {
        return serverUrl;
    }

    public void setServerUrl(String serverUrl) {
        this.serverUrl = serverUrl == null ? null : serverUrl.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public String getIsmingle() {
        return ismingle;
    }

    public void setIsmingle(String ismingle) {
        this.ismingle = ismingle == null ? null : ismingle.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Date getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", appId=").append(appId);
        sb.append(", wName=").append(wName);
        sb.append(", worldId=").append(worldId);
        sb.append(", status=").append(status);
        sb.append(", domain=").append(domain);
        sb.append(", ip=").append(ip);
        sb.append(", serverUrl=").append(serverUrl);
        sb.append(", info=").append(info);
        sb.append(", ismingle=").append(ismingle);
        sb.append(", time=").append(time);
        sb.append(", openTime=").append(openTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}