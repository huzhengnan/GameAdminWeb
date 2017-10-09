package com.lyh.admin.model;

import java.io.Serializable;

public class OsaGmForbidmsg implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 1:账号 2:：角色
     */
    private Integer ptype;

    /**
     * 
     */
    private String openId;

    /**
     * 
     */
    private String appId;

    /**
     * 
     */
    private String worldId;

    /**
     * 
     */
    private Integer opttype;

    /**
     * 单位分钟
     */
    private Integer forbidtime;

    /**
     * 
     */
    private String ip;

    /**
     * 
     */
    private String msg;

    /**
     * 
     */
    private String optres;

    /**
     * 
     */
    private String opttime;

    /**
     * 
     */
    private String username;

    /**
     * osa_gm_forbidmsg
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getPtype() {
        return ptype;
    }

    public void setPtype(Integer ptype) {
        this.ptype = ptype;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId == null ? null : openId.trim();
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId == null ? null : appId.trim();
    }

    public String getWorldId() {
        return worldId;
    }

    public void setWorldId(String worldId) {
        this.worldId = worldId == null ? null : worldId.trim();
    }

    public Integer getOpttype() {
        return opttype;
    }

    public void setOpttype(Integer opttype) {
        this.opttype = opttype;
    }

    public Integer getForbidtime() {
        return forbidtime;
    }

    public void setForbidtime(Integer forbidtime) {
        this.forbidtime = forbidtime;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg == null ? null : msg.trim();
    }

    public String getOptres() {
        return optres;
    }

    public void setOptres(String optres) {
        this.optres = optres == null ? null : optres.trim();
    }

    public String getOpttime() {
        return opttime;
    }

    public void setOpttime(String opttime) {
        this.opttime = opttime == null ? null : opttime.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", ptype=").append(ptype);
        sb.append(", openId=").append(openId);
        sb.append(", appId=").append(appId);
        sb.append(", worldId=").append(worldId);
        sb.append(", opttype=").append(opttype);
        sb.append(", forbidtime=").append(forbidtime);
        sb.append(", ip=").append(ip);
        sb.append(", msg=").append(msg);
        sb.append(", optres=").append(optres);
        sb.append(", opttime=").append(opttime);
        sb.append(", username=").append(username);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}