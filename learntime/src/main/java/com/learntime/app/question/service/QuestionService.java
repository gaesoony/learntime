package com.learntime.app.question.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.question.dao.QuestionDao;
import com.learntime.app.question.vo.QuestionVo;

@Service
public class QuestionService {
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private QuestionDao dao;
	

	public int questionWrite(QuestionVo vo) {
		
		return dao.questionWrite(sst,vo);
	}

}
