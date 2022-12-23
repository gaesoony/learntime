package com.learntime.app.question.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;

@Repository
public class QuestionDao {

	public int questionWrite(SqlSessionTemplate sst, QuestionVo vo) {
		
		return sst.insert("questionMapper.questionWrite",vo);
	}

	public List<QuestionVo> selectQuestionList(SqlSessionTemplate sst, Map<String, String> map,PageVo pv) {
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("questionMapper.questionList",map,rb);
	}
	
	public int selectCount(SqlSessionTemplate sst) {
		return sst.selectOne("questionMapper.selectCount");
	}
	public QuestionVo selectOne(SqlSessionTemplate sst, QuestionVo vo) {
		return sst.selectOne("questionMapper.selectOne",vo);
	}

	public List<QuestionVo> boardList(SqlSessionTemplate sst, int cate) {
	
		return sst.selectList("questionMapper.boardList",cate);
	}

}
