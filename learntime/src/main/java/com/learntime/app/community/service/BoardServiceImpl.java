package com.learntime.app.community.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.community.dao.BoardDao;
import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;
import com.learntime.app.community.vo.LHSVo;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao dao;

	@Autowired
	private SqlSessionTemplate sst;

	@Transactional
	@Override
	public int write(BoardVo vo) {

		return dao.write(sst, vo);
	}

	@Override
	public List<BoardVo> select(BoardFilterVo blf) {
		return dao.selectBoardList(sst, blf);
	}

	
	//자유게시판 상세 보기
	@Transactional
	@Override
	public BoardVo selectOne(String bno) {
		
		//조회수 증가
		dao.updateHit(sst, bno);
		
		return dao.selectBoardDetail(sst, bno);
	}

	//자유게시판 댓글 조회
	@Override
	public List<CmtVo> selectCmtList(String bno) {
		return dao.selectCmtList(sst, bno);
	}

	
	//자유게시판 댓글쓰기
	@Transactional
	@Override
	public int insertCmt(CmtVo cv) {
		
		return dao.insertCmt(sst, cv);
		
	}

	//자유게시판 카테고리 불러오기
	@Override
	public List<CateVo> selectCate() {
		return dao.selectCateList(sst);
	}

	//자유게시판 카테고리 추가하기
	@Transactional
	@Override
	public int insertCate(String cateName) {
		return dao.insertCategory(sst, cateName);
	}

	//스크랩, 좋아요 조회
	@Override
	public List<LHSVo> selectLHS(LHSVo lhs) {
		return dao.selectLHS(sst, lhs);
		
	}

	//스크랩 넣기
	@Transactional
	@Override
	public int insertScrap(LHSVo lhs) {
		return dao.insertScrap(sst, lhs);
	}

	//스크랩 삭제
	@Transactional
	@Override
	public int deleteScrap(LHSVo lhs) {
		return dao.deleteScrap(sst, lhs);
	}
	
	//나의 글조회
	@Override
	public List<BoardVo> selecMyList(String userNo) {
		return dao.selectMyList(sst, userNo);
	}

	//스크랩 글조회
	@Override
	public List<BoardVo> selectScrapList(String userNo) {
		return dao.selectScrapList(sst, userNo);
	}
	
	//유저 스크랩 조회
	@Override
	public LHSVo selectScrap(LHSVo lhs) {
		return dao.selectScrapList(sst, lhs);
	}

	//글수정
	@Transactional
	@Override
	public int modify(BoardVo vo) {
		return dao.update(sst, vo);
	}
	
	
	

}
