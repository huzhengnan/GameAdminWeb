package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaProxyRechargeFetch;
import com.lyh.admin.model.OsaProxyRechargeFetchExample;

public interface OsaProxyRechargeFetchMapper {
    long countByExample(OsaProxyRechargeFetchExample example);

    int deleteByExample(OsaProxyRechargeFetchExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaProxyRechargeFetch record);

    int insertSelective(OsaProxyRechargeFetch record);

    List<OsaProxyRechargeFetch> selectByExample(OsaProxyRechargeFetchExample example);

    OsaProxyRechargeFetch selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaProxyRechargeFetch record, @Param("example") OsaProxyRechargeFetchExample example);

    int updateByExample(@Param("record") OsaProxyRechargeFetch record, @Param("example") OsaProxyRechargeFetchExample example);

    int updateByPrimaryKeySelective(OsaProxyRechargeFetch record);

    int updateByPrimaryKey(OsaProxyRechargeFetch record);
}