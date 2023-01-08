package com.learntime.app.admin.q.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;

public interface AdminQuestionService {
	
	public List<QuestionVo> selectQuestionListAd(Map map);

	public int selectCount();

	public QuestionVo selectOne(QuestionVo vo);

	public int deleteOne(List<NoticeVo> list);

}
