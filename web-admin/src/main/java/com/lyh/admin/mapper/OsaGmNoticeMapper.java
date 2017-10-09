package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaGmNotice;
import com.lyh.admin.model.OsaGmNoticeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaGmNoticeMapper {
    long countByExample(OsaGmNoticeExample example);

    int deleteByExample(OsaGmNoticeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGmNotice record);

    int insertSelective(OsaGmNotice record);

    List<OsaGmNotice> selectByExample(OsaGmNoticeExample example);

    OsaGmNotice selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGmNotice record, @Param("example") OsaGmNoticeExample example);

    int updateByExample(@Param("record") OsaGmNotice record, @Param("example") OsaGmNoticeExample example);

    int updateByPrimaryKeySelective(OsaGmNotice record);

    int updateByPrimaryKey(OsaGmNotice record);
}