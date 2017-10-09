package com.lyh.admin.model;

import java.io.Serializable;

public class OsaSysLog implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 
     */
    private String userName;

    /**
     * 
     */
    private String action;

    /**
     * 操作了哪个类的对象
     */
    private String className;

    /**
     * 操作的对象是谁，可能为对象的ID
     */
    private String classObj;

    /**
     * 
     */
    private Integer opTime;

    /**
     * 操作的结果
     */
    private String result;

    /**
     * osa_sys_log
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action == null ? null : action.trim();
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getClassObj() {
        return classObj;
    }

    public void setClassObj(String classObj) {
        this.classObj = classObj == null ? null : classObj.trim();
    }

    public Integer getOpTime() {
        return opTime;
    }

    public void setOpTime(Integer opTime) {
        this.opTime = opTime;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userName=").append(userName);
        sb.append(", action=").append(action);
        sb.append(", className=").append(className);
        sb.append(", classObj=").append(classObj);
        sb.append(", opTime=").append(opTime);
        sb.append(", result=").append(result);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}