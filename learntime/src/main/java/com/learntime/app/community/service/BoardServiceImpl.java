package com.learntime.app.community.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.community.dao.BoardDao;
import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtLHVo;
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
	public List<BoardVo> select(BoardFilterVo bfv) {
		return dao.selectBoardList(sst, bfv);
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
	public List<CmtVo> selectCmtList(CmtVo cv) {
		return dao.selectCmtList(sst, cv);
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
	public List<BoardVo> selecMyList(Map<String, String> filter) {
		return dao.selectMyList(sst, filter);
	}

	//스크랩 글조회
	@Override
	public List<BoardVo> selectScrapList(Map<String, String> filter) {
		return dao.selectScrapList(sst, filter);
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

	//글삭제
	@Transactional
	@Override
	public int delete(BoardVo vo) {
		return dao.delete(sst, vo);
	}

	//유저의 특정글 좋아요 조회
	@Override
	public LHSVo selectUserLike(LHSVo lhsVo) {
		return dao.selectUserLike(sst, lhsVo);
		
	}

	//유저의 특정글 좋아요
	@Override
	@Transactional
	public int insertUserLike(LHSVo lhsVo) {
		return dao.insertUserLike(sst, lhsVo);
	}

	//유저의 좋아요 지우기
	@Override
	@Transactional
	public int deleteUserLike(LHSVo lhsVo) {
		return dao.deleteUserLike(sst, lhsVo);
	}
	
	//유저의 좋아요 업데이트
	@Override
	public int updateUserLike(LHSVo lhsVo) {
		return dao.updateUserLike(sst, lhsVo);
	}

	@Override
	public CmtLHVo selectUserLike(CmtLHVo cmtLHVo) {
		return dao.selectUserLike(sst, cmtLHVo);
	}
	
	@Override
	public int insertUserLike(CmtLHVo cmtLHVo) {
		return dao.insertUserLike(sst, cmtLHVo);
	}
	
	@Override
	public int deleteUserLike(CmtLHVo cmtLHVo) {
		return dao.deleteUserLike(sst, cmtLHVo);
	}

	@Override
	public int updateUserLike(CmtLHVo cmtLHVo) {
		return dao.updateUserLike(sst, cmtLHVo);
	}

	
	
	
	

}
