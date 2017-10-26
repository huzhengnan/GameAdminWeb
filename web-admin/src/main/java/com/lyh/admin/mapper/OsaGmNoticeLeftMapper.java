package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaGmNoticeLeft;
import com.lyh.admin.model.OsaGmNoticeLeftExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaGmNoticeLeftMapper {
    long countByExample(OsaGmNoticeLeftExample example);

    int deleteByExample(OsaGmNoticeLeftExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGmNoticeLeft record);

    int insertSelective(OsaGmNoticeLeft record);

    List<OsaGmNoticeLeft> selectByExample(OsaGmNoticeLeftExample example);

    OsaGmNoticeLeft selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGmNoticeLeft record, @Param("example") OsaGmNoticeLeftExample example);

    int updateByExample(@Param("record") OsaGmNoticeLeft record, @Param("example") OsaGmNoticeLeftExample example);

    int updateByPrimaryKeySelective(OsaGmNoticeLeft record);

    int updateByPrimaryKey(OsaGmNoticeLeft record);
}