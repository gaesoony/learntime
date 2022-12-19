package com.learntime.app.question.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.question.vo.QuestionVo;

@Repository
public class QuestionDao {

	public int questionWrite(SqlSessionTemplate sst, QuestionVo vo) {
		
		return sst.insert("questionMapper.questionWrite",vo);
	}

}
