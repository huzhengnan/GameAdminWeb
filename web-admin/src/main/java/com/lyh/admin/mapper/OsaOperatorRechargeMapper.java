package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaOperatorRecharge;
import com.lyh.admin.model.OsaOperatorRechargeExample;

public interface OsaOperatorRechargeMapper {
    long countByExample(OsaOperatorRechargeExample example);

    int deleteByExample(OsaOperatorRechargeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaOperatorRecharge record);

    int insertSelective(OsaOperatorRecharge record);

    List<OsaOperatorRecharge> selectByExample(OsaOperatorRechargeExample example);

    OsaOperatorRecharge selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaOperatorRecharge record, @Param("example") OsaOperatorRechargeExample example);

    int updateByExample(@Param("record") OsaOperatorRecharge record, @Param("example") OsaOperatorRechargeExample example);

    int updateByPrimaryKeySelective(OsaOperatorRecharge record);

    int updateByPrimaryKey(OsaOperatorRecharge record);
}