package com.lyh.admin.model;

import java.io.Serializable;
import java.util.Date;

public class OsaGmNoticeLeft implements Serializable {
    /**
     * 
     */
    private Long id;

    /**
     * 内容
     */
    private String content;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * appid
     */
    private String appId;

    /**
     * 服务器id
     */
    private String worldId;

    /**
     * 标题
     */
    private String title;

    /**
     * 1=成功
     */
    private Integer status;

    /**
     * osa_gm_notice_left
     */
    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", content=").append(content);
        sb.append(", createTime=").append(createTime);
        sb.append(", appId=").append(appId);
        sb.append(", worldId=").append(worldId);
        sb.append(", title=").append(title);
        sb.append(", status=").append(status);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}