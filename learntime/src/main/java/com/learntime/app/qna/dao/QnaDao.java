package com.learntime.app.qna.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaVo;

@Repository
public interface QnaDao {

	//게시글 작성
	int write(SqlSessionTemplate sst, QnaVo vo);

	//게시글 목록
	List<QnaVo> selectList(SqlSessionTemplate sst, String writer);

	int insertTag(SqlSessionTemplate sst, String[] tag);

	int insertKnowledgeTag(SqlSessionTemplate sst, String[] tag);

}
