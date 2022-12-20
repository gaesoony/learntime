package com.learntime.app.question.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.category.CategoryList;
import com.learntime.app.question.dao.QuestionDao;
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
	public List<QuestionVo> selectQuestionList(Map<String, String> map) {
		
		return dao.selectQuestionList(sst,map);
	}



	@Override
	public QuestionVo selectOne() {
		
		return dao.selectOne();
	}

}
