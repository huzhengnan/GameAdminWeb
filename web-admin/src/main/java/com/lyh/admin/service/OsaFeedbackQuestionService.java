package com.lyh.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lyh.admin.model.OsaFeedbackQuestion;

/** 
 * ClassName:OsaFeedbackQuestionService <br/> 
 * TODO:问题反馈
 * Date:     2017年10月5日 下午4:23:14 <br/> 
 * @author   lyh 
 * @version    
 */

public interface OsaFeedbackQuestionService extends BaseService<OsaFeedbackQuestion> {
	
	/** 
	 * getFeedbackQuestionList:(). <br/> 
	 * TODO().<br/> 
	 * 反馈列表
	 * @author lyh 
	 * @return 
	 */  
	List<OsaFeedbackQuestion> getFeedbackQuestionList();
}
  