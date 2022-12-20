package com.learntime.app.question.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.category.CategoryList;
import com.learntime.app.question.vo.QuestionVo;

@Repository
public class QuestionDao {

	public int questionWrite(SqlSessionTemplate sst, QuestionVo vo) {
		
		return sst.insert("questionMapper.questionWrite",vo);
	}

	public List<QuestionVo> selectQuestionList(SqlSessionTemplate sst, Map<String, String> map) {
		
		return sst.selectList("questionMapper.questionList",map);
	}

}
