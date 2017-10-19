package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaLogoutLog;
import com.lyh.admin.model.OsaLogoutLogExample;

public interface OsaLogoutLogMapper {
    long countByExample(OsaLogoutLogExample example);

    int deleteByExample(OsaLogoutLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaLogoutLog record);

    int insertSelective(OsaLogoutLog record);

    List<OsaLogoutLog> selectByExample(OsaLogoutLogExample example);

    OsaLogoutLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaLogoutLog record, @Param("example") OsaLogoutLogExample example);

    int updateByExample(@Param("record") OsaLogoutLog record, @Param("example") OsaLogoutLogExample example);

    int updateByPrimaryKeySelective(OsaLogoutLog record);

    int updateByPrimaryKey(OsaLogoutLog record);
}