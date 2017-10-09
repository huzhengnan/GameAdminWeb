package com.lyh.admin.model;

import java.io.Serializable;

public class OsaQuickNote implements Serializable {
    /**
     * note_id
     */
    private Long noteId;

    /**
     * 内容
     */
    private String noteContent;

    /**
     * 谁添加的
     */
    private Integer ownerId;

    /**
     * osa_quick_note
     */
    private static final long serialVersionUID = 1L;

    public Long getNoteId() {
        return noteId;
    }

    public void setNoteId(Long noteId) {
        this.noteId = noteId;
    }

    public String getNoteContent() {
        return noteContent;
    }

    public void setNoteContent(String noteContent) {
        this.noteContent = noteContent == null ? null : noteContent.trim();
    }

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", noteId=").append(noteId);
        sb.append(", noteContent=").append(noteContent);
        sb.append(", ownerId=").append(ownerId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}