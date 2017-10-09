package com.lyh.admin.model;

import java.io.Serializable;

public class OsaGmSendMoneyPay implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 订单号
     */
    private String orderId;

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
    private String openId;

    /**
     * 
     */
    private Double money;

    /**
     * 
     */
    private Long sendId;

    /**
     * 
     */
    private String status;

    /**
     * 
     */
    private String info;

    /**
     * 
     */
    private String addtime;

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

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
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

    public Long getSendId() {
        return sendId;
    }

    public void setSendId(Long sendId) {
        this.sendId = sendId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", orderId=").append(orderId);
        sb.append(", appId=").append(appId);
        sb.append(", worldId=").append(worldId);
        sb.append(", openId=").append(openId);
        sb.append(", money=").append(money);
        sb.append(", sendId=").append(sendId);
        sb.append(", status=").append(status);
        sb.append(", info=").append(info);
        sb.append(", addtime=").append(addtime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}