package com.lyh.admin.model;

import java.io.Serializable;
import java.util.Date;

public class OsaGmSendMoneyPay implements Serializable {
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
     * 被发放帐号
     */
    private String openId;

    /**
     * 
     */
    private Double money;

    /**
     * 发放人
     */
    private String sendName;

    /**
     * 
     */
    private Integer status;

    /**
     * 
     */
    private String info;

    /**
     * 
     */
    private Date addTime;

    /**
     * osa_gm_send_money_pay
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

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId == null ? null : openId.trim();
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getSendName() {
        return sendName;
    }

    public void setSendName(String sendName) {
        this.sendName = sendName == null ? null : sendName.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
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
        sb.append(", openId=").append(openId);
        sb.append(", money=").append(money);
        sb.append(", sendName=").append(sendName);
        sb.append(", status=").append(status);
        sb.append(", info=").append(info);
        sb.append(", addTime=").append(addTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}