package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaProxyRequest;
import com.lyh.admin.model.OsaProxyRequestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaProxyRequestMapper {
    long countByExample(OsaProxyRequestExample example);

    int deleteByExample(OsaProxyRequestExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaProxyRequest record);

    int insertSelective(OsaProxyRequest record);

    List<OsaProxyRequest> selectByExample(OsaProxyRequestExample example);

    OsaProxyRequest selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaProxyRequest record, @Param("example") OsaProxyRequestExample example);

    int updateByExample(@Param("record") OsaProxyRequest record, @Param("example") OsaProxyRequestExample example);

    int updateByPrimaryKeySelective(OsaProxyRequest record);

    int updateByPrimaryKey(OsaProxyRequest record);
}