package com.learntime.app.qna.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaAnswerVo;
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
	public List<Map<String, Object>> selectList(SqlSessionTemplate sst, QnaVo vo) {
		
		List list = sst.selectList("qnaMapper.selectList", vo);
		return list;
	}
	
	//게시글 목록 -> 해시태그
	@Override
	public List<Map<String, Object>> selectTagList(SqlSessionTemplate sst, String qno) {
//		List list = sst.selectList("qnaMapper.selectTagList", qno);
		return list;
	}

	//게시글 상세조회
	@Override
	public QnaVo detail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("qnaMapper.detail", no);
	}

	

}
