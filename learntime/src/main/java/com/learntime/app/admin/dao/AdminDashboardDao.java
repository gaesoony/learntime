package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.QuestionVo;

public interface AdminDashboardDao {

	List<Map<String, Object>> selectLearningList(SqlSessionTemplate sst);

	List<NoticeVo> selectNoticeList(SqlSessionTemplate sst);

	List<FaqVo> selectFaqList(SqlSessionTemplate sst);

	List<QuestionVo> selectQuestionList(SqlSessionTemplate sst);

	int selectVisitorCnt(SqlSessionTemplate sst);

	int selectJoinCnt(SqlSessionTemplate sst);

	int selectQuitCnt(SqlSessionTemplate sst);

}
