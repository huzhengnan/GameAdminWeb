package com.lyh.admin.model;

import java.io.Serializable;

public class OsaGmNoticeCycle implements Serializable {
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
    private Integer cycletime;

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
    private String opttime;

    /**
     * 
     */
    private String userName;

    /**
     * 
     */
    private String settime;

    /**
     * 1:活跃  0：停止
     */
    private String status;

    /**
     * 记录上次发送时间
     */
    private Long lastSendTime;

    /**
     * osa_gm_notice_cycle
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

    public Integer getCycletime() {
        return cycletime;
    }

    public void setCycletime(Integer cycletime) {
        this.cycletime = cycletime;
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

    public String getSettime() {
        return settime;
    }

    public void setSettime(String settime) {
        this.settime = settime == null ? null : settime.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Long getLastSendTime() {
        return lastSendTime;
    }

    public void setLastSendTime(Long lastSendTime) {
        this.lastSendTime = lastSendTime;
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
        sb.append(", cycletime=").append(cycletime);
        sb.append(", content=").append(content);
        sb.append(", msg=").append(msg);
        sb.append(", opttime=").append(opttime);
        sb.append(", userName=").append(userName);
        sb.append(", settime=").append(settime);
        sb.append(", status=").append(status);
        sb.append(", lastSendTime=").append(lastSendTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}