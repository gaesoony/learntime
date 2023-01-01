package com.learntime.app.admin.q.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;

public interface AdminQuestionService {
	
	public List<QuestionVo> selectQuestionListAd(QuestionVo vo,PageVo pv);

	public int selectCount();

	public QuestionVo selectOne(QuestionVo vo);

	public int delete(QuestionVo vo);

}
