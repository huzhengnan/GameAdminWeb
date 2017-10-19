package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaGmNoticeCycle;
import com.lyh.admin.model.OsaGmNoticeCycleExample;

public interface OsaGmNoticeCycleMapper {
    long countByExample(OsaGmNoticeCycleExample example);

    int deleteByExample(OsaGmNoticeCycleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGmNoticeCycle record);

    int insertSelective(OsaGmNoticeCycle record);

    List<OsaGmNoticeCycle> selectByExample(OsaGmNoticeCycleExample example);

    OsaGmNoticeCycle selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGmNoticeCycle record, @Param("example") OsaGmNoticeCycleExample example);

    int updateByExample(@Param("record") OsaGmNoticeCycle record, @Param("example") OsaGmNoticeCycleExample example);

    int updateByPrimaryKeySelective(OsaGmNoticeCycle record);

    int updateByPrimaryKey(OsaGmNoticeCycle record);
}