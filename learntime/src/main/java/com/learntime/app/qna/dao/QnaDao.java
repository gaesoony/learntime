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
	List<Map<String, Object>> selectList(SqlSessionTemplate sst, QnaTypeVo qvo);
	
	public int edit(SqlSessionTemplate sst, QnaVo vo);

	public int updateHit(SqlSessionTemplate sst, String no);

	public int delete(SqlSessionTemplate sst, String qno);

	public Map<String, Object> detail(SqlSessionTemplate sst, String qno);

	public List<Map<String, Object>> tagList(SqlSessionTemplate sst, String qno);

	public int writeAnswer(SqlSessionTemplate sst, Map map);

	public List<Map<String, Object>> answerList(SqlSessionTemplate sst, String qno);

	public List<Map<String, Object>> commentList(SqlSessionTemplate sst, String agno);

	public int select(SqlSessionTemplate sst, String no);

	public int scrap(SqlSessionTemplate sst, QnaTypeVo qvo);

	public String selectLikeHate(SqlSessionTemplate sst, Map map);

	public String selectScrap(SqlSessionTemplate sst, Map map);

	public List<Map<String, Object>> selectMypageList(SqlSessionTemplate sst, QnaVo vo);

	public int deleteTag(SqlSessionTemplate sst, String no);

	public List<Map<String, Object>> answerLankList(SqlSessionTemplate sst);


}
