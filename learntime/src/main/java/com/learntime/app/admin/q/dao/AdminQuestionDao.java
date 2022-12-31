package com.learntime.app.admin.q.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;
@Repository
public class AdminQuestionDao {

	public List<QuestionVo> selectQuestionListAd(SqlSessionTemplate sst, QuestionVo vo,PageVo pv) {
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("adminQuestionMapper.adminQuestionList",vo,rb);
	}

	public int selectCount(SqlSessionTemplate sst) {

		return sst.selectOne("adminQuestionMapper.selectCount");
	}

	public QuestionVo selectOne(SqlSessionTemplate sst, QuestionVo vo) {
		return sst.selectOne("adminQuesionMapper.selectOne",vo);
	}

}