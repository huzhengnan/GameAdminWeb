package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaOnlineLog;
import com.lyh.admin.model.OsaOnlineLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaOnlineLogMapper {
    long countByExample(OsaOnlineLogExample example);

    int deleteByExample(OsaOnlineLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaOnlineLog record);

    int insertSelective(OsaOnlineLog record);

    List<OsaOnlineLog> selectByExample(OsaOnlineLogExample example);

    OsaOnlineLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaOnlineLog record, @Param("example") OsaOnlineLogExample example);

    int updateByExample(@Param("record") OsaOnlineLog record, @Param("example") OsaOnlineLogExample example);

    int updateByPrimaryKeySelective(OsaOnlineLog record);

    int updateByPrimaryKey(OsaOnlineLog record);
}