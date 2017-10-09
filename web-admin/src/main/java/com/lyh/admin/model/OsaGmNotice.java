package com.lyh.admin.model;

import java.io.Serializable;

public class OsaGmNotice implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 
     */
    private String appId;

    /**
     * 
     */
    private String worldId;

    /**
     * 1：一次性  2：循环
     */
    private Integer type;

    /**
     * 
     */
    private String content;

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
    private String userName;

    /**
     * osa_gm_notice
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

    public String getWorldId() {
        return worldId;
    }

    public void setWorldId(String worldId) {
        this.worldId = worldId == null ? null : worldId.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", appId=").append(appId);
        sb.append(", worldId=").append(worldId);
        sb.append(", type=").append(type);
        sb.append(", content=").append(content);
        sb.append(", msg=").append(msg);
        sb.append(", optres=").append(optres);
        sb.append(", opttime=").append(opttime);
        sb.append(", userName=").append(userName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}