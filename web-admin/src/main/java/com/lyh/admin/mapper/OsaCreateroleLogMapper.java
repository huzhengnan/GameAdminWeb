package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaCreateroleLog;
import com.lyh.admin.model.OsaCreateroleLogExample;

public interface OsaCreateroleLogMapper {
    long countByExample(OsaCreateroleLogExample example);

    int deleteByExample(OsaCreateroleLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaCreateroleLog record);

    int insertSelective(OsaCreateroleLog record);

    List<OsaCreateroleLog> selectByExample(OsaCreateroleLogExample example);

    OsaCreateroleLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaCreateroleLog record, @Param("example") OsaCreateroleLogExample example);

    int updateByExample(@Param("record") OsaCreateroleLog record, @Param("example") OsaCreateroleLogExample example);

    int updateByPrimaryKeySelective(OsaCreateroleLog record);

    int updateByPrimaryKey(OsaCreateroleLog record);
}