package com.lyh.admin.model;

import java.io.Serializable;

public class OsaUserGroup implements Serializable {
    /**
     * 
     */
    private Long groupId;

    /**
     * 
     */
    private String groupName;

    /**
     * 创建人ID
     */
    private Integer ownerId;

    /**
     * 
     */
    private String groupDesc;

    /**
     * 初始权限为1,5,17,18,22,23,24,25
     */
    private String groupRole;

    /**
     * osa_user_group
     */
    private static final long serialVersionUID = 1L;

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName == null ? null : groupName.trim();
    }

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    public String getGroupDesc() {
        return groupDesc;
    }

    public void setGroupDesc(String groupDesc) {
        this.groupDesc = groupDesc == null ? null : groupDesc.trim();
    }

    public String getGroupRole() {
        return groupRole;
    }

    public void setGroupRole(String groupRole) {
        this.groupRole = groupRole == null ? null : groupRole.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", groupId=").append(groupId);
        sb.append(", groupName=").append(groupName);
        sb.append(", ownerId=").append(ownerId);
        sb.append(", groupDesc=").append(groupDesc);
        sb.append(", groupRole=").append(groupRole);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}