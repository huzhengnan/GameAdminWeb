package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaSysLog;
import com.lyh.admin.model.OsaSysLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaSysLogMapper {
    long countByExample(OsaSysLogExample example);

    int deleteByExample(OsaSysLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaSysLog record);

    int insertSelective(OsaSysLog record);

    List<OsaSysLog> selectByExampleWithBLOBs(OsaSysLogExample example);

    List<OsaSysLog> selectByExample(OsaSysLogExample example);

    OsaSysLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaSysLog record, @Param("example") OsaSysLogExample example);

    int updateByExampleWithBLOBs(@Param("record") OsaSysLog record, @Param("example") OsaSysLogExample example);

    int updateByExample(@Param("record") OsaSysLog record, @Param("example") OsaSysLogExample example);

    int updateByPrimaryKeySelective(OsaSysLog record);

    int updateByPrimaryKeyWithBLOBs(OsaSysLog record);

    int updateByPrimaryKey(OsaSysLog record);
}