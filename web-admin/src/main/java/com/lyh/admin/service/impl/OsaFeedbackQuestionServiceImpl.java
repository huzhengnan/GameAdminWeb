package com.lyh.admin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.admin.mapper.OsaFeedbackQuestionMapper;
import com.lyh.admin.model.OsaFeedbackQuestion;
import com.lyh.admin.model.OsaFeedbackQuestionExample;
import com.lyh.admin.service.OsaFeedbackQuestionService;

/** 
 * ClassName:OsaFeedbackQuestionServiceImpl <br/> 
 * TODO:
 * Date:     2017年10月5日 下午5:04:05 <br/> 
 * @author   lyh 
 * @version    
 */
@Service
public class OsaFeedbackQuestionServiceImpl implements OsaFeedbackQuestionService {
	@Resource
	private OsaFeedbackQuestionMapper mapper;
	@Override
	public void insert(OsaFeedbackQuestion t) {
		// TODO Auto-generated method stub
		mapper.insert(t);
	}
	
	@Override
	public void update(OsaFeedbackQuestion t) {
		// TODO Auto-generated method stub
		mapper.updateByPrimaryKeySelective(t);
	}
	
	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		mapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public OsaFeedbackQuestion findById(long id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<OsaFeedbackQuestion> getFeedbackQuestionList() {
		// TODO Auto-generated method stub
		OsaFeedbackQuestionExample example = new OsaFeedbackQuestionExample();
		example.setOrderByClause("create_time desc");
		return mapper.selectByExample(example);
	}
	
}
  