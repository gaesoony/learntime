package com.learntime.app.qna.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaVo;

@Repository
public class QnaDaoImpl implements QnaDao {

	//게시글 작성
	@Override
	public int write(SqlSessionTemplate sst, QnaVo vo) {
		return sst.insert("qnaMapper.write", vo);
	}

}
