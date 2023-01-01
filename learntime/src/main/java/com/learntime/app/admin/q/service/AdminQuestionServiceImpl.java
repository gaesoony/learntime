package com.learntime.app.admin.q.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.q.dao.AdminQuestionDao;
import com.learntime.app.question.dao.QuestionDao;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;
@Service
public class AdminQuestionServiceImpl implements AdminQuestionService {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private AdminQuestionDao adao;

	@Override
	public List<QuestionVo> selectQuestionListAd(QuestionVo vo, PageVo pv) {

		return adao.selectQuestionListAd(sst,vo,pv);
	}

	@Override
	public int selectCount() {

		
		return adao.selectCount(sst);
	}

	@Override
	public QuestionVo selectOne(QuestionVo vo) {
		
		return adao.selectOne(sst,vo);
	}

	@Override
	public int delete(QuestionVo vo) {
		return adao.delete(sst,vo);
		
	}

}
