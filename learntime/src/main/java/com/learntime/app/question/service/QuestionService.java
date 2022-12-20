package com.learntime.app.question.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.category.CategoryList;
import com.learntime.app.question.vo.QuestionVo;

public interface QuestionService {
	
	public int questionWrite(QuestionVo vo);
	
	public List<QuestionVo> selectQuestionList(Map<String, String> map);
	
	public QuestionVo selectOne();

}
