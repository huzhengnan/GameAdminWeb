package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaProxyRecharge;
import com.lyh.admin.model.OsaProxyRechargeExample;

public interface OsaProxyRechargeMapper {
    long countByExample(OsaProxyRechargeExample example);

    int deleteByExample(OsaProxyRechargeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaProxyRecharge record);

    int insertSelective(OsaProxyRecharge record);

    List<OsaProxyRecharge> selectByExample(OsaProxyRechargeExample example);

    OsaProxyRecharge selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaProxyRecharge record, @Param("example") OsaProxyRechargeExample example);

    int updateByExample(@Param("record") OsaProxyRecharge record, @Param("example") OsaProxyRechargeExample example);

    int updateByPrimaryKeySelective(OsaProxyRecharge record);

    int updateByPrimaryKey(OsaProxyRecharge record);
}