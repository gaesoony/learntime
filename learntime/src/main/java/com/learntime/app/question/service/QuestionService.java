package com.learntime.app.question.service;

import java.util.List;
import java.util.Map;


import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;

public interface QuestionService {
	
	public int questionWrite(QuestionVo vo);
	
	public List<QuestionVo> selectQuestionList(Map<String, String> map,PageVo pv);
	public List<QuestionVo> boardList(int cate);
	
	public int selectCount();
	
	public QuestionVo selectOne(QuestionVo vo);

}
