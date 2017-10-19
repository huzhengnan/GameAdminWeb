package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaUserGroup;
import com.lyh.admin.model.OsaUserGroupExample;

public interface OsaUserGroupMapper {
    long countByExample(OsaUserGroupExample example);

    int deleteByExample(OsaUserGroupExample example);

    int deleteByPrimaryKey(Long groupId);

    int insert(OsaUserGroup record);

    int insertSelective(OsaUserGroup record);

    List<OsaUserGroup> selectByExample(OsaUserGroupExample example);

    OsaUserGroup selectByPrimaryKey(Long groupId);

    int updateByExampleSelective(@Param("record") OsaUserGroup record, @Param("example") OsaUserGroupExample example);

    int updateByExample(@Param("record") OsaUserGroup record, @Param("example") OsaUserGroupExample example);

    int updateByPrimaryKeySelective(OsaUserGroup record);

    int updateByPrimaryKey(OsaUserGroup record);
}