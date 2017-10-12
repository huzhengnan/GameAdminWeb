package com.lyh.admin.model;

import java.io.Serializable;

public class OsaOperatorRecharge implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 
     */
    private String openId;

    /**
     * 
     */
    private String worldId;

    /**
     * 充的钱
     */
    private Double gold;

    /**
     * 单价
     */
    private Double money;

    /**
     * 订单号
     */
    private String billno;

    /**
     * 
     */
    private Integer time;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 
     */
    private String addtime;

    /**
     * 
     */
    private String res;

    /**
     * 
     */
    private String info;

    /**
     * osa_operator_recharge
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

    public Double getGold() {
        return gold;
    }

    public void setGold(Double gold) {
        this.gold = gold;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getBillno() {
        return billno;
    }

    public void setBillno(String billno) {
        this.billno = billno == null ? null : billno.trim();
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res == null ? null : res.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
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
        sb.append(", gold=").append(gold);
        sb.append(", money=").append(money);
        sb.append(", billno=").append(billno);
        sb.append(", time=").append(time);
        sb.append(", status=").append(status);
        sb.append(", addtime=").append(addtime);
        sb.append(", res=").append(res);
        sb.append(", info=").append(info);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}