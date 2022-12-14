package com.learntime.app.question.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.learntime.app.question.dao.QuestionDao;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private QuestionDao dao;
	


	@Override
	public int questionWrite(QuestionVo vo) {
		
		return dao.questionWrite(sst, vo);
	}

	@Override
	public List<QuestionVo> selectQuestionList(Map map) {
		
		
		return dao.selectQuestionList(sst,map);
	}

	@Override
	public int selectCount() {
		return dao.selectCount(sst);
		
	}

	@Override
	public QuestionVo selectOne(QuestionVo vo) {
		
		return dao.selectOne(sst,vo);
	}

	@Override
	public int updateOne(QuestionVo vo) {
		return dao.updateOne(sst,vo);
	}

	@Override
	public QuestionVo selectPost(QuestionVo vo) {
		vo = dao.selectPost(sst,vo);
		System.out.println("service:"+vo);
		return vo;
	}

	


	


	


	


}
