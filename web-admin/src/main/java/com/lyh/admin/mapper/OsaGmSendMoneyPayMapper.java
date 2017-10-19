package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaGmSendMoneyPay;
import com.lyh.admin.model.OsaGmSendMoneyPayExample;

public interface OsaGmSendMoneyPayMapper {
    long countByExample(OsaGmSendMoneyPayExample example);

    int deleteByExample(OsaGmSendMoneyPayExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGmSendMoneyPay record);

    int insertSelective(OsaGmSendMoneyPay record);

    List<OsaGmSendMoneyPay> selectByExample(OsaGmSendMoneyPayExample example);

    OsaGmSendMoneyPay selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGmSendMoneyPay record, @Param("example") OsaGmSendMoneyPayExample example);

    int updateByExample(@Param("record") OsaGmSendMoneyPay record, @Param("example") OsaGmSendMoneyPayExample example);

    int updateByPrimaryKeySelective(OsaGmSendMoneyPay record);

    int updateByPrimaryKey(OsaGmSendMoneyPay record);
}