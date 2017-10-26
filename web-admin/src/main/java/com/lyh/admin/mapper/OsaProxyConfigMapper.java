package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaProxyConfig;
import com.lyh.admin.model.OsaProxyConfigExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaProxyConfigMapper {
    long countByExample(OsaProxyConfigExample example);

    int deleteByExample(OsaProxyConfigExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaProxyConfig record);

    int insertSelective(OsaProxyConfig record);

    List<OsaProxyConfig> selectByExample(OsaProxyConfigExample example);

    OsaProxyConfig selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaProxyConfig record, @Param("example") OsaProxyConfigExample example);

    int updateByExample(@Param("record") OsaProxyConfig record, @Param("example") OsaProxyConfigExample example);

    int updateByPrimaryKeySelective(OsaProxyConfig record);

    int updateByPrimaryKey(OsaProxyConfig record);
}