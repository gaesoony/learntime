package com.learntime.app.qna.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaAnswerVo;
import com.learntime.app.qna.vo.QnaTypeVo;
import com.learntime.app.qna.vo.QnaVo;

@Repository
public interface QnaDao {

	//게시글 작성
	public int write(SqlSessionTemplate sst, QnaVo vo);
	
	public int insertTag(SqlSessionTemplate sst, String[] tag);

	public int insertKnowledgeTag(SqlSessionTemplate sst, String[] tag);

	//게시글 목록
	List<Map<String, Object>> selectList(SqlSessionTemplate sst, QnaVo vo, QnaTypeVo qvo);
	
	//게시글 상세조회
	QnaVo detail(SqlSessionTemplate sst, String no);

	public int edit(SqlSessionTemplate sst, QnaVo vo);

	public int updateHit(SqlSessionTemplate sst, String no);

	public int delete(SqlSessionTemplate sst, String qno);

	

	

}
