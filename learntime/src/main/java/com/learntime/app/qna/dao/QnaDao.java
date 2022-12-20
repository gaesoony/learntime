package com.learntime.app.qna.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaVo;

@Repository
public interface QnaDao {

	//게시글 작성
	int write(SqlSessionTemplate sst, QnaVo vo);

}
