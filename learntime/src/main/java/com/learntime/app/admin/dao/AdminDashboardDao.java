package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.admin.vo.VisitorCntVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.QuestionVo;

public interface AdminDashboardDao {

	List<Map<String, Object>> selectLearningList(SqlSessionTemplate sst);

	List<NoticeVo> selectNoticeList(SqlSessionTemplate sst);

	List<FaqVo> selectFaqList(SqlSessionTemplate sst);

	List<QuestionVo> selectQuestionList(SqlSessionTemplate sst);

	int selectVisitorCnt(SqlSessionTemplate sst, Map map);

	int selectJoinCnt(SqlSessionTemplate sst, Map map);

	int selectQuitCnt(SqlSessionTemplate sst, Map map);
	
	int insertPageView(SqlSessionTemplate sst, VisitorCntVo vo);

	int selectPageViewCnt(SqlSessionTemplate sst, Map map);

	List<Map<String, Object>> selectWeekPageView(SqlSessionTemplate sst);

	List<Map<String, Object>> selectWeekVisitor(SqlSessionTemplate sst);

	List<Map<String, Object>> selectWeekSummary(SqlSessionTemplate sst);

	int selectWeekPageViewSum(SqlSessionTemplate sst);

	int selectWeekVisitorSum(SqlSessionTemplate sst);

	int selectWeekJoinSum(SqlSessionTemplate sst);

	int selectWeekQuitSum(SqlSessionTemplate sst);

	int selectMonthPageViewSum(SqlSessionTemplate sst);

	int selectMonthVisitorSum(SqlSessionTemplate sst);

	int selectMonthJoinSum(SqlSessionTemplate sst);

	int selectMonthQuitSum(SqlSessionTemplate sst);

	int selectStudyCnt(SqlSessionTemplate sst, Map map);

	int selectProjectCnt(SqlSessionTemplate sst, Map map);

	int selectGroupApplyCnt(SqlSessionTemplate sst, Map map);

	List<Map<String, Object>> selectTechStackList(SqlSessionTemplate sst);

	int selectTechStackCnt(SqlSessionTemplate sst, String no);

	List<Map<String, Object>> selectGroupTypeList(SqlSessionTemplate sst);

	int selectGroupTypeCnt(SqlSessionTemplate sst, String no);

	List<Map<String, Object>> selectGroupPeriodList(SqlSessionTemplate sst);

	int selectGroupPeriodCnt(SqlSessionTemplate sst, String no);

	int selectGroupWayCnt(SqlSessionTemplate sst, String string);

	List<Map<String, Object>> selectGroupWayList(SqlSessionTemplate sst);

	int selectGroupStatusCnt(SqlSessionTemplate sst, String string);

	List<BoardVo> selectBoardList(SqlSessionTemplate sst);

}
