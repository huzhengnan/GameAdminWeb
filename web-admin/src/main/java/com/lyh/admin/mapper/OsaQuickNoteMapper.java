package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaQuickNote;
import com.lyh.admin.model.OsaQuickNoteExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaQuickNoteMapper {
    long countByExample(OsaQuickNoteExample example);

    int deleteByExample(OsaQuickNoteExample example);

    int deleteByPrimaryKey(Long noteId);

    int insert(OsaQuickNote record);

    int insertSelective(OsaQuickNote record);

    List<OsaQuickNote> selectByExample(OsaQuickNoteExample example);

    OsaQuickNote selectByPrimaryKey(Long noteId);

    int updateByExampleSelective(@Param("record") OsaQuickNote record, @Param("example") OsaQuickNoteExample example);

    int updateByExample(@Param("record") OsaQuickNote record, @Param("example") OsaQuickNoteExample example);

    int updateByPrimaryKeySelective(OsaQuickNote record);

    int updateByPrimaryKey(OsaQuickNote record);
}