package com.learntime.app.qna.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaVo;

import lombok.extern.slf4j.Slf4j;

@Repository
public class QnaDaoImpl implements QnaDao {

	//게시글 작성
	@Override
	public int write(SqlSessionTemplate sst, QnaVo vo) {
		
		System.out.println("dao에서 vo : " + vo);
		return sst.insert("qnaMapper.write", vo);
	}
	
	@Override
	public int insertTag(SqlSessionTemplate sst, String[] tag) {
		
		System.out.println("dao 브이오 : " + tag);
		return sst.insert("qnaMapper.insertTag", tag);
	}
	
	@Override
	public int insertKnowledgeTag(SqlSessionTemplate sst, String[] tag) {
		
		System.out.println("dao 브이오 : " + tag);
		return sst.insert("qnaMapper.insertKnowledgeTag", tag);
	}

	//게시글 목록
	@Override
	public List<QnaVo> selectList(SqlSessionTemplate sst, QnaVo vo) {
		return sst.selectList("qnaMapper.selectList", vo);
	}

}
