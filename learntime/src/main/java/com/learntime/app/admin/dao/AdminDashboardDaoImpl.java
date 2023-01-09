package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.admin.vo.VisitorCntVo;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.QuestionVo;

@Repository
public class AdminDashboardDaoImpl implements AdminDashboardDao{

	@Override
	public List<Map<String, Object>> selectLearningList(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectLearningList");
	}

	@Override
	public List<NoticeVo> selectNoticeList(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectNoticeList");
	}

	@Override
	public List<FaqVo> selectFaqList(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectFaqList");
	}

	@Override
	public List<QuestionVo> selectQuestionList(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectQuestionList");
	}

	@Override
	public int selectVisitorCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectVisitorCnt", map);
	}

	@Override
	public int selectJoinCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectJoinCnt", map);
	}

	@Override
	public int selectQuitCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectQuitCnt", map);
	}
	
	@Override
	public int insertPageView(SqlSessionTemplate sst, VisitorCntVo vo) {
		return sst.insert("adminDashboardMapper.insertPageView", vo);
	}

	@Override
	public int selectPageViewCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectPageViewCnt", map);
	}

	@Override
	public List<Map<String, Object>> selectWeekPageView(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectWeekPageView");
	}

	@Override
	public List<Map<String, Object>> selectWeekVisitor(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectWeekVisitor");
	}

	@Override
	public List<Map<String, Object>> selectWeekSummary(SqlSessionTemplate sst) {
		return sst.selectList("adminDashboardMapper.selectWeekSummary");
	}

	@Override
	public int selectWeekPageViewSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectWeekPageViewSum");
	}

	@Override
	public int selectWeekVisitorSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectWeekVisitorSum");
	}

	@Override
	public int selectWeekJoinSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectWeekJoinSum");
	}

	@Override
	public int selectWeekQuitSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectWeekQuitSum");
	}

	@Override
	public int selectMonthPageViewSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectMonthPageViewSum");
	}

	@Override
	public int selectMonthVisitorSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectMonthVisitorSum");
	}

	@Override
	public int selectMonthJoinSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectMonthJoinSum");
	}

	@Override
	public int selectMonthQuitSum(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectMonthQuitSum");
	}

	@Override
	public int selectStudyCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectStudyCnt", map);
	}

	@Override
	public int selectProjectCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectProjectCnt", map);
	}

	@Override
	public int selectGroupApplyCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("adminDashboardMapper.selectGroupApplyCnt", map);
	}

}
