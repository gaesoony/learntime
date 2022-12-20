package com.learntime.app.qna.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.qna.dao.QnaDao;
import com.learntime.app.qna.vo.QnaVo;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public int write(QnaVo vo) {
		
		return dao.write(sst, vo);
	}

}
