package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaPlayerRegisterLog;
import com.lyh.admin.model.OsaPlayerRegisterLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaPlayerRegisterLogMapper {
    long countByExample(OsaPlayerRegisterLogExample example);

    int deleteByExample(OsaPlayerRegisterLogExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaPlayerRegisterLog record);

    int insertSelective(OsaPlayerRegisterLog record);

    List<OsaPlayerRegisterLog> selectByExample(OsaPlayerRegisterLogExample example);

    OsaPlayerRegisterLog selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaPlayerRegisterLog record, @Param("example") OsaPlayerRegisterLogExample example);

    int updateByExample(@Param("record") OsaPlayerRegisterLog record, @Param("example") OsaPlayerRegisterLogExample example);

    int updateByPrimaryKeySelective(OsaPlayerRegisterLog record);

    int updateByPrimaryKey(OsaPlayerRegisterLog record);
}