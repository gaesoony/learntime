package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.dao.AdminDashboardDao;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.QuestionVo;

@Service
public class AdminDashboardServiceImpl implements AdminDashboardService{
	
	@Autowired
	private AdminDashboardDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Map<String, Object>> selectLearningList() {
		return dao.selectLearningList(sst);
	}

	@Override
	public List<NoticeVo> selectNoticeList() {
		return dao.selectNoticeList(sst);
	}

	@Override
	public List<FaqVo> selectFaqList() {
		return dao.selectFaqList(sst);
	}

	@Override
	public List<QuestionVo> selectQuestionList() {
		return dao.selectQuestionList(sst);
	}

	@Override
	public int selectVisitorCnt() {
		return dao.selectVisitorCnt(sst);
	}

	@Override
	public int selectJoinCnt() {
		return dao.selectJoinCnt(sst);
	}

	@Override
	public int selectQuitCnt() {
		return dao.selectQuitCnt(sst);
	}

}
