package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaGmSendMoney;
import com.lyh.admin.model.OsaGmSendMoneyExample;

public interface OsaGmSendMoneyMapper {
    long countByExample(OsaGmSendMoneyExample example);

    int deleteByExample(OsaGmSendMoneyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGmSendMoney record);

    int insertSelective(OsaGmSendMoney record);

    List<OsaGmSendMoney> selectByExample(OsaGmSendMoneyExample example);

    OsaGmSendMoney selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGmSendMoney record, @Param("example") OsaGmSendMoneyExample example);

    int updateByExample(@Param("record") OsaGmSendMoney record, @Param("example") OsaGmSendMoneyExample example);

    int updateByPrimaryKeySelective(OsaGmSendMoney record);

    int updateByPrimaryKey(OsaGmSendMoney record);
}