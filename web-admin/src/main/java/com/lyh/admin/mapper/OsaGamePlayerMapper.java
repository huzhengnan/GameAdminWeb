package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaGamePlayer;
import com.lyh.admin.model.OsaGamePlayerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaGamePlayerMapper {
    long countByExample(OsaGamePlayerExample example);

    int deleteByExample(OsaGamePlayerExample example);

    int deleteByPrimaryKey(Long playerId);

    int insert(OsaGamePlayer record);

    int insertSelective(OsaGamePlayer record);

    List<OsaGamePlayer> selectByExample(OsaGamePlayerExample example);

    OsaGamePlayer selectByPrimaryKey(Long playerId);

    int updateByExampleSelective(@Param("record") OsaGamePlayer record, @Param("example") OsaGamePlayerExample example);

    int updateByExample(@Param("record") OsaGamePlayer record, @Param("example") OsaGamePlayerExample example);

    int updateByPrimaryKeySelective(OsaGamePlayer record);

    int updateByPrimaryKey(OsaGamePlayer record);
}