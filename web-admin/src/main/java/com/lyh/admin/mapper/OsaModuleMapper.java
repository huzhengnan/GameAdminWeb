package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaModule;
import com.lyh.admin.model.OsaModuleExample;

public interface OsaModuleMapper {
    long countByExample(OsaModuleExample example);

    int deleteByExample(OsaModuleExample example);

    int deleteByPrimaryKey(Long moduleId);

    int insert(OsaModule record);

    int insertSelective(OsaModule record);

    List<OsaModule> selectByExample(OsaModuleExample example);

    OsaModule selectByPrimaryKey(Long moduleId);

    int updateByExampleSelective(@Param("record") OsaModule record, @Param("example") OsaModuleExample example);

    int updateByExample(@Param("record") OsaModule record, @Param("example") OsaModuleExample example);

    int updateByPrimaryKeySelective(OsaModule record);

    int updateByPrimaryKey(OsaModule record);
}