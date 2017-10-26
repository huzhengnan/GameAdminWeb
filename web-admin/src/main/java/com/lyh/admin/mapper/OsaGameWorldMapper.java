package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaGameWorld;
import com.lyh.admin.model.OsaGameWorldExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaGameWorldMapper {
    long countByExample(OsaGameWorldExample example);

    int deleteByExample(OsaGameWorldExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGameWorld record);

    int insertSelective(OsaGameWorld record);

    List<OsaGameWorld> selectByExample(OsaGameWorldExample example);

    OsaGameWorld selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGameWorld record, @Param("example") OsaGameWorldExample example);

    int updateByExample(@Param("record") OsaGameWorld record, @Param("example") OsaGameWorldExample example);

    int updateByPrimaryKeySelective(OsaGameWorld record);

    int updateByPrimaryKey(OsaGameWorld record);
}