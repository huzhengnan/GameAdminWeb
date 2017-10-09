package com.lyh.admin.model;

import java.io.Serializable;

public class OsaMenuUrl implements Serializable {
    /**
     * 菜单id
     */
    private Long menuId;

    /**
     * 
     */
    private String menuName;

    /**
     * 
     */
    private String menuUrl;

    /**
     * 
     */
    private Long moduleId;

    /**
     * 是否在sidebar里出现
     */
    private Byte isShow;

    /**
     * 在线状态，还是下线状态，即可用，不可用。
     */
    private Integer online;

    /**
     * 是否允许快捷访问
     */
    private Integer shortcutAllowed;

    /**
     * 
     */
    private String menuDesc;

    /**
     * 上一级菜单
     */
    private Integer fatherMenu;

    /**
     * osa_menu_url
     */
    private static final long serialVersionUID = 1L;

    public Long getMenuId() {
        return menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl == null ? null : menuUrl.trim();
    }

    public Long getModuleId() {
        return moduleId;
    }

    public void setModuleId(Long moduleId) {
        this.moduleId = moduleId;
    }

    public Byte getIsShow() {
        return isShow;
    }

    public void setIsShow(Byte isShow) {
        this.isShow = isShow;
    }

    public Integer getOnline() {
        return online;
    }

    public void setOnline(Integer online) {
        this.online = online;
    }

    public Integer getShortcutAllowed() {
        return shortcutAllowed;
    }

    public void setShortcutAllowed(Integer shortcutAllowed) {
        this.shortcutAllowed = shortcutAllowed;
    }

    public String getMenuDesc() {
        return menuDesc;
    }

    public void setMenuDesc(String menuDesc) {
        this.menuDesc = menuDesc == null ? null : menuDesc.trim();
    }

    public Integer getFatherMenu() {
        return fatherMenu;
    }

    public void setFatherMenu(Integer fatherMenu) {
        this.fatherMenu = fatherMenu;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", menuId=").append(menuId);
        sb.append(", menuName=").append(menuName);
        sb.append(", menuUrl=").append(menuUrl);
        sb.append(", moduleId=").append(moduleId);
        sb.append(", isShow=").append(isShow);
        sb.append(", online=").append(online);
        sb.append(", shortcutAllowed=").append(shortcutAllowed);
        sb.append(", menuDesc=").append(menuDesc);
        sb.append(", fatherMenu=").append(fatherMenu);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}