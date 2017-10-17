package com.lyh.admin.model;

import java.io.Serializable;

public class OsaGmSendMoney implements Serializable {
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
     * 1：指定账号  2：全服
     */
    private Integer type;

    /**
     * 
     */
    private String content;

    /**
     * 
     */
    private String addtime;

    /**
     * 
     */
    private String userName;

    /**
     * 
     */
    private String status;

    /**
     * 
     */
    private String checkmsg;

    /**
     * osa_gm_send_money
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

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getCheckmsg() {
        return checkmsg;
    }

    public void setCheckmsg(String checkmsg) {
        this.checkmsg = checkmsg == null ? null : checkmsg.trim();
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
        sb.append(", addtime=").append(addtime);
        sb.append(", userName=").append(userName);
        sb.append(", status=").append(status);
        sb.append(", checkmsg=").append(checkmsg);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}