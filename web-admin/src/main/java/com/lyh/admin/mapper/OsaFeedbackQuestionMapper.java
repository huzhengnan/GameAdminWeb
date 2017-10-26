package com.lyh.admin.mapper;

import com.lyh.admin.model.OsaFeedbackQuestion;
import com.lyh.admin.model.OsaFeedbackQuestionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OsaFeedbackQuestionMapper {
    long countByExample(OsaFeedbackQuestionExample example);

    int deleteByExample(OsaFeedbackQuestionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OsaFeedbackQuestion record);

    int insertSelective(OsaFeedbackQuestion record);

    List<OsaFeedbackQuestion> selectByExample(OsaFeedbackQuestionExample example);

    OsaFeedbackQuestion selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OsaFeedbackQuestion record, @Param("example") OsaFeedbackQuestionExample example);

    int updateByExample(@Param("record") OsaFeedbackQuestion record, @Param("example") OsaFeedbackQuestionExample example);

    int updateByPrimaryKeySelective(OsaFeedbackQuestion record);

    int updateByPrimaryKey(OsaFeedbackQuestion record);
}