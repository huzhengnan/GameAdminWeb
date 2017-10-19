package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaLoginLog;
import com.lyh.admin.model.OsaLoginLogExample;

public interface OsaLoginLogMapper {
    long countByExample(OsaLoginLogExample example);

    int deleteByExample(OsaLoginLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaLoginLog record);

    int insertSelective(OsaLoginLog record);

    List<OsaLoginLog> selectByExample(OsaLoginLogExample example);

    OsaLoginLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaLoginLog record, @Param("example") OsaLoginLogExample example);

    int updateByExample(@Param("record") OsaLoginLog record, @Param("example") OsaLoginLogExample example);

    int updateByPrimaryKeySelective(OsaLoginLog record);

    int updateByPrimaryKey(OsaLoginLog record);
}