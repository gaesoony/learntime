package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.QuestionVo;

public interface AdminDashboardService {

	//러닝 목록 조회
	List<Map<String, Object>> selectLearningList();

	//공지사항 목록 조회
	List<NoticeVo> selectNoticeList();

	//faq 목록 조회
	List<FaqVo> selectFaqList();

	//문의 목록 조회
	List<QuestionVo> selectQuestionList();

	//방문자수 조회
	int selectVisitorCnt();

	//가입자수 조회
	int selectJoinCnt();

	//탈퇴자수 조회
	int selectQuitCnt();

}
