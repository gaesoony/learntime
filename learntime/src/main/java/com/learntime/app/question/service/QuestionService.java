package com.learntime.app.question.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;

public interface QuestionService {
	
	public int questionWrite(QuestionVo vo);
	
	public List<QuestionVo> selectQuestionList(Map map);

	
	public int selectCount();
	
	public QuestionVo selectOne(QuestionVo vo);

	//public int updateOne(QuestionVo vo);

	

}
