package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaProxyUser;
import com.lyh.admin.model.OsaProxyUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaProxyUserMapper {
    long countByExample(OsaProxyUserExample example);

    int deleteByExample(OsaProxyUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaProxyUser record);

    int insertSelective(OsaProxyUser record);

    List<OsaProxyUser> selectByExample(OsaProxyUserExample example);

    OsaProxyUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaProxyUser record, @Param("example") OsaProxyUserExample example);

    int updateByExample(@Param("record") OsaProxyUser record, @Param("example") OsaProxyUserExample example);

    int updateByPrimaryKeySelective(OsaProxyUser record);

    int updateByPrimaryKey(OsaProxyUser record);
}