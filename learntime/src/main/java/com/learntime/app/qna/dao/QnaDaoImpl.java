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

	//댓글 작성
	@Override
	public int writeAnswer(SqlSessionTemplate sst, Map map) {
		System.out.println("디에이오에서 댓글 작성 : " + map);
		return sst.insert("qnaMapper.writeAnswer", map);
	}

	//상세조회 내 댓글 리스트
	@Override
	public List<Map<String, Object>> answerList(SqlSessionTemplate sst, String qno) {
		return sst.selectList("qnaMapper.answerList", qno);
	}

	//상세조회 내 대댓글 리스트
	@Override
	public List<Map<String, Object>> commentList(SqlSessionTemplate sst, String agno) {
		return sst.selectList("qnaMapper.commentList", agno);
	}

	//상세조회 내 답변 채택
	@Override
	public int select(SqlSessionTemplate sst, String no) {
		return sst.update("qnaMapper.selectReply", no);
	}

	//게시글 스크랩
	@Override
	public int scrap(SqlSessionTemplate sst, QnaTypeVo qvo) {
		return sst.insert("qnaMapper.scrap", qvo);
	}

	//상세조회 내 좋아요&싫어요 조회
	@Override
	public String selectLikeHate(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("qnaMapper.selectLikeHate", map);
	}

	//상세조회 내 스크랩 조회
	@Override
	public String selectScrap(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("qnaMapper.selectScrap", map);
	}

	@Override
	public List<Map<String, Object>> selectMypageList(SqlSessionTemplate sst, QnaVo vo) {
		return sst.selectList("qnaMapper.mypageList", vo);
	}

	//공통 태그 삭제
	@Override
	public int deleteTag(SqlSessionTemplate sst, String no) {
		return sst.update("qnaMapper.deleteTag", no);
	}

	//답변 채택 랭킹
	@Override
	public List<Map<String, Object>> answerLankList(SqlSessionTemplate sst) {
		return sst.selectList("qnaMapper.answerLankList");
	}

}
