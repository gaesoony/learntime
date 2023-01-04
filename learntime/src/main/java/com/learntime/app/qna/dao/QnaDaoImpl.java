package com.learntime.app.qna.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.qna.vo.QnaAnswerVo;
import com.learntime.app.qna.vo.QnaTypeVo;
import com.learntime.app.qna.vo.QnaVo;

import lombok.extern.slf4j.Slf4j;

@Repository
public class QnaDaoImpl implements QnaDao {

	//게시글 작성
	@Override
	public int write(SqlSessionTemplate sst, QnaVo vo) {
		return sst.insert("qnaMapper.write", vo);
	}
	
	@Override
	public int insertTag(SqlSessionTemplate sst, String[] tag) {
		return sst.insert("qnaMapper.insertTag", tag);
	}
	
	@Override
	public int insertKnowledgeTag(SqlSessionTemplate sst, String[] tag) {
		return sst.insert("qnaMapper.insertKnowledgeTag", tag);
	}

	//게시글 목록
	@Override
	public List<Map<String, Object>> selectList(SqlSessionTemplate sst, QnaVo vo, QnaTypeVo qvo) {
		
		List list = sst.selectList("qnaMapper.selectList", qvo);
		return list;
	}
	
	//게시글 상세조회
	@Override
	public QnaVo detail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("qnaMapper.detail", no);
	}

	//게시글 수정
	@Override
	public int edit(SqlSessionTemplate sst, QnaVo vo) {
		return sst.update("qnaMapper.edit", vo);
	}

	//조회수
	@Override
	public int updateHit(SqlSessionTemplate sst, String no) {
		return sst.update("qnaMapper.updateHit", no);
	}

	@Override
	public int delete(SqlSessionTemplate sst, String qno) {
		return sst.update("qnaMapper.delete", qno);
	}

	

}
