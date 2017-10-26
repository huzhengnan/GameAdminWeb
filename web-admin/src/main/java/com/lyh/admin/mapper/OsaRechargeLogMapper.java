package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaRechargeLog;
import com.lyh.admin.model.OsaRechargeLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaRechargeLogMapper {
    long countByExample(OsaRechargeLogExample example);

    int deleteByExample(OsaRechargeLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaRechargeLog record);

    int insertSelective(OsaRechargeLog record);

    List<OsaRechargeLog> selectByExample(OsaRechargeLogExample example);

    OsaRechargeLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaRechargeLog record, @Param("example") OsaRechargeLogExample example);

    int updateByExample(@Param("record") OsaRechargeLog record, @Param("example") OsaRechargeLogExample example);

    int updateByPrimaryKeySelective(OsaRechargeLog record);

    int updateByPrimaryKey(OsaRechargeLog record);
}