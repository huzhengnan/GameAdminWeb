package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaMenuUrl;
import com.lyh.admin.model.OsaMenuUrlExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaMenuUrlMapper {
    long countByExample(OsaMenuUrlExample example);

    int deleteByExample(OsaMenuUrlExample example);

    int deleteByPrimaryKey(Long menuId);

    int insert(OsaMenuUrl record);

    int insertSelective(OsaMenuUrl record);

    List<OsaMenuUrl> selectByExample(OsaMenuUrlExample example);

    OsaMenuUrl selectByPrimaryKey(Long menuId);

    int updateByExampleSelective(@Param("record") OsaMenuUrl record, @Param("example") OsaMenuUrlExample example);

    int updateByExample(@Param("record") OsaMenuUrl record, @Param("example") OsaMenuUrlExample example);

    int updateByPrimaryKeySelective(OsaMenuUrl record);

    int updateByPrimaryKey(OsaMenuUrl record);
}