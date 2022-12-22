package com.learntime.app.qna.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.qna.dao.QnaDao;
import com.learntime.app.qna.vo.QnaVo;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	@Transactional
	public int write(QnaVo vo) {
		
		int result1 = 0;
		int result2 = 0;
		
		result1 = dao.write(sst, vo);
		
		
		if(result1 == 1) {
			result2 = dao.insertTag(sst, vo.getTag());
		}
		
		return result1 * result2;
	}

}
