package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaConsumeLog;
import com.lyh.admin.model.OsaConsumeLogExample;

public interface OsaConsumeLogMapper {
    long countByExample(OsaConsumeLogExample example);

    int deleteByExample(OsaConsumeLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaConsumeLog record);

    int insertSelective(OsaConsumeLog record);

    List<OsaConsumeLog> selectByExample(OsaConsumeLogExample example);

    OsaConsumeLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaConsumeLog record, @Param("example") OsaConsumeLogExample example);

    int updateByExample(@Param("record") OsaConsumeLog record, @Param("example") OsaConsumeLogExample example);

    int updateByPrimaryKeySelective(OsaConsumeLog record);

    int updateByPrimaryKey(OsaConsumeLog record);
}