package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaGmForbidmsg;
import com.lyh.admin.model.OsaGmForbidmsgExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaGmForbidmsgMapper {
    long countByExample(OsaGmForbidmsgExample example);

    int deleteByExample(OsaGmForbidmsgExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaGmForbidmsg record);

    int insertSelective(OsaGmForbidmsg record);

    List<OsaGmForbidmsg> selectByExample(OsaGmForbidmsgExample example);

    OsaGmForbidmsg selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaGmForbidmsg record, @Param("example") OsaGmForbidmsgExample example);

    int updateByExample(@Param("record") OsaGmForbidmsg record, @Param("example") OsaGmForbidmsgExample example);

    int updateByPrimaryKeySelective(OsaGmForbidmsg record);

    int updateByPrimaryKey(OsaGmForbidmsg record);
}