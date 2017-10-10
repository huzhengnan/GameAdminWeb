package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaUser;
import com.lyh.admin.model.OsaUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaUserMapper {
    long countByExample(OsaUserExample example);

    int deleteByExample(OsaUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaUser record);

    int insertSelective(OsaUser record);

    List<OsaUser> selectByExample(OsaUserExample example);

    OsaUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaUser record, @Param("example") OsaUserExample example);

    int updateByExample(@Param("record") OsaUser record, @Param("example") OsaUserExample example);

    int updateByPrimaryKeySelective(OsaUser record);

    int updateByPrimaryKey(OsaUser record);
}