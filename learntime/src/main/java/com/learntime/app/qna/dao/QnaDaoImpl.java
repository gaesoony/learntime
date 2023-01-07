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
		System.out.println("디에이옹서 작성 : " + vo);
		return sst.insert("qnaMapper.write", vo);
	}
	
	@Override
	public int insertTag(SqlSessionTemplate sst, String[] tag) {
		System.out.println("디에이오에서 태그1 : " + tag);
		return sst.insert("qnaMapper.insertTag", tag);
	}
	
	@Override
	public int insertKnowledgeTag(SqlSessionTemplate sst, String[] tag) {
		System.out.println("디에이오에서 태그2 : " + tag);
		return sst.insert("qnaMapper.insertKnowledgeTag", tag);
	}

	//게시글 목록
	@Override
	public List<Map<String, Object>> selectList(SqlSessionTemplate sst, QnaTypeVo qvo) {
		
		List list = sst.selectList("qnaMapper.selectList", qvo);
		return list;
	}
	
	//게시글 수정
	@Override
	public int edit(SqlSessionTemplate sst, QnaVo vo) {
		System.out.println("디에이오에서 수정 : " + vo);
		return sst.update("qnaMapper.edit", vo);
	}

	//조회수
	@Override
	public int updateHit(SqlSessionTemplate sst, String qno) {
		return sst.update("qnaMapper.updateHit", qno);
	}

	//게시글 삭제
	@Override
	public int delete(SqlSessionTemplate sst, String qno) {
		return sst.update("qnaMapper.delete", qno);
	}

	//게시글 상세조회
	@Override
	public Map<String, Object> detail(SqlSessionTemplate sst, String qno) {
		return sst.selectOne("qnaMapper.detail", qno);
	}

	//상세조회 내 해시태그
	@Override
	public List<Map<String, Object>> tagList(SqlSessionTemplate sst, String qno) {
		return sst.selectList("qnaMapper.selectTagList", qno);
	}

}
