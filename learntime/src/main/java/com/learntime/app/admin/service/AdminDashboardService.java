package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.community.vo.BoardVo;
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
	int selectVisitorCnt(Map map);

	//가입자수 조회
	int selectJoinCnt(Map map);

	//탈퇴자수 조회
	int selectQuitCnt(Map map);

	//페이지뷰 조회
	int selectPageViewCnt(Map map);

	List<Map<String, Object>> selectWeekPageView();

	List<Map<String, Object>> selectWeekVisitor();

	List<Map<String, Object>> selectWeekSummary();

	int selectWeekPageViewSum();

	int selectWeekVisitorSum();

	int selectWeekJoinSum();

	int selectWeekQuitSum();

	int selectMonthPageViewSum();

	int selectMonthVisitorSum();

	int selectMonthJoinSum();

	int selectMonthQuitSum();

	int selectStudyCnt(Map map);

	int selectProjectCnt(Map map);

	int selectGroupApplyCnt(Map map);

	List<Map<String, Object>> selectTechStackSumList();

	List<Map<String, Object>> selectGroupTypeSumList();

	List<Map<String, Object>> selectGroupWaySumList();

	List<Map<String, Object>> selectGroupStatusSumList();

	List<Map<String, Object>> selectGroupPeriodSumList();

	List<BoardVo> selectBoardList();



}
