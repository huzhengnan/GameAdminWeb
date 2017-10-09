package com.lyh.admin.model;

import java.io.Serializable;

public class OsaConsumeLog implements Serializable {
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
    private String openId;

    /**
     * 游戏币
     */
    private Double moneyBefore;

    /**
     * 
     */
    private Double moneyAfter;

    /**
     * 
     */
    private Double lostMoney;

    /**
     * 
     */
    private String itemId;

    /**
     * 
     */
    private String itemType;

    /**
     * 
     */
    private Integer itemNum;

    /**
     * 
     */
    private String itemName;

    /**
     * 
     */
    private String time;

    /**
     * 
     */
    private Integer level;

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
     * osa_consume_log
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

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId == null ? null : openId.trim();
    }

    public Double getMoneyBefore() {
        return moneyBefore;
    }

    public void setMoneyBefore(Double moneyBefore) {
        this.moneyBefore = moneyBefore;
    }

    public Double getMoneyAfter() {
        return moneyAfter;
    }

    public void setMoneyAfter(Double moneyAfter) {
        this.moneyAfter = moneyAfter;
    }

    public Double getLostMoney() {
        return lostMoney;
    }

    public void setLostMoney(Double lostMoney) {
        this.lostMoney = lostMoney;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType == null ? null : itemType.trim();
    }

    public Integer getItemNum() {
        return itemNum;
    }

    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
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
        sb.append(", openId=").append(openId);
        sb.append(", moneyBefore=").append(moneyBefore);
        sb.append(", moneyAfter=").append(moneyAfter);
        sb.append(", lostMoney=").append(lostMoney);
        sb.append(", itemId=").append(itemId);
        sb.append(", itemType=").append(itemType);
        sb.append(", itemNum=").append(itemNum);
        sb.append(", itemName=").append(itemName);
        sb.append(", time=").append(time);
        sb.append(", level=").append(level);
        sb.append(", roleName=").append(roleName);
        sb.append(", addTime=").append(addTime);
        sb.append(", appId=").append(appId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}