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
	public int selectVisitorCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectVisitorCnt");
	}

	@Override
	public int selectJoinCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectJoinCnt");
	}

	@Override
	public int selectQuitCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminDashboardMapper.selectQuitCnt");
	}

}
