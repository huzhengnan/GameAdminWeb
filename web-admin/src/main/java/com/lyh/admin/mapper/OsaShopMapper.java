package com.lyh.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyh.admin.model.OsaShop;
import com.lyh.admin.model.OsaShopExample;

public interface OsaShopMapper {
    long countByExample(OsaShopExample example);

    int deleteByExample(OsaShopExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaShop record);

    int insertSelective(OsaShop record);

    List<OsaShop> selectByExample(OsaShopExample example);

    OsaShop selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaShop record, @Param("example") OsaShopExample example);

    int updateByExample(@Param("record") OsaShop record, @Param("example") OsaShopExample example);

    int updateByPrimaryKeySelective(OsaShop record);

    int updateByPrimaryKey(OsaShop record);
}