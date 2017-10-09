package com.lyh.admin.model;

import java.io.Serializable;

public class OsaModule implements Serializable {
    /**
     * 
     */
    private Long moduleId;

    /**
     * 
     */
    private String moduleName;

    /**
     * 
     */
    private String moduleUrl;

    /**
     * 
     */
    private Integer moduleSort;

    /**
     * 
     */
    private String moduleDesc;

    /**
     * 菜单模块图标
     */
    private String moduleIcon;

    /**
     * 模块是否在线
     */
    private Integer online;

    /**
     * osa_module
     */
    private static final long serialVersionUID = 1L;

    public Long getModuleId() {
        return moduleId;
    }

    public void setModuleId(Long moduleId) {
        this.moduleId = moduleId;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName == null ? null : moduleName.trim();
    }

    public String getModuleUrl() {
        return moduleUrl;
    }

    public void setModuleUrl(String moduleUrl) {
        this.moduleUrl = moduleUrl == null ? null : moduleUrl.trim();
    }

    public Integer getModuleSort() {
        return moduleSort;
    }

    public void setModuleSort(Integer moduleSort) {
        this.moduleSort = moduleSort;
    }

    public String getModuleDesc() {
        return moduleDesc;
    }

    public void setModuleDesc(String moduleDesc) {
        this.moduleDesc = moduleDesc == null ? null : moduleDesc.trim();
    }

    public String getModuleIcon() {
        return moduleIcon;
    }

    public void setModuleIcon(String moduleIcon) {
        this.moduleIcon = moduleIcon == null ? null : moduleIcon.trim();
    }

    public Integer getOnline() {
        return online;
    }

    public void setOnline(Integer online) {
        this.online = online;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", moduleId=").append(moduleId);
        sb.append(", moduleName=").append(moduleName);
        sb.append(", moduleUrl=").append(moduleUrl);
        sb.append(", moduleSort=").append(moduleSort);
        sb.append(", moduleDesc=").append(moduleDesc);
        sb.append(", moduleIcon=").append(moduleIcon);
        sb.append(", online=").append(online);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}