package com.learntime.app.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;
import com.learntime.app.community.vo.LHSVo;

@Repository
public class BoardDaoImpl implements BoardDao{

	//글쓰기
	@Override
	public int write(SqlSessionTemplate sst, BoardVo vo) {
		System.out.println("Vo from Dao : " + vo);
		return sst.insert("freeBoardMapper.write", vo);
	}
	
	//모든 리스트 조회
	@Override
	public List<BoardVo> selectBoardList(SqlSessionTemplate sst) {
		return sst.selectList("freeBoardMapper.selectList");
	}
	
	//나의 글 조회
	@Override
	public List<BoardVo> selectMyList(SqlSessionTemplate sst, String userNo) {
		return sst.selectList("freeBoardMapper.selectMyList", userNo);
	}
	

	//상세글 조회
	@Override
	public BoardVo selectBoardDetail(SqlSessionTemplate sst, String bno) {
		
		return sst.selectOne("freeBoardMapper.selectOne", bno);
	}
	
	//조회수 증가
	@Override
	public int updateHit(SqlSessionTemplate sst, String bno) {
		return sst.update("freeBoardMapper.updateHit", bno);
	}

	//댓글 조회
	@Override
	public List<CmtVo> selectCmtList(SqlSessionTemplate sst, String bno) {
		return sst.selectList("freeBoardMapper.selectCmtList", bno);
		
	}

	//댓글 작성
	@Override
	public int insertCmt(SqlSessionTemplate sst, CmtVo cv) {
		return sst.insert("freeBoardMapper.insertCmt", cv);
	}


	//카테고리 불러오기
	@Override
	public List<CateVo> selectCateList(SqlSessionTemplate sst) {
		return sst.selectList("freeBoardMapper.selectCateList");
	}

	//카테고리 추가하기
	@Override
	public int insertCategory(SqlSessionTemplate sst, String cateName) {
		return sst.insert("freeBoardMapper.insertCategory", cateName);
	}


	//스크랩, 좋아요 글 조회
	@Override
	public List<LHSVo> selectLHS(SqlSessionTemplate sst, LHSVo lhs) {
		return sst.selectList("freeBoardMapper.selectLHS", lhs);
	}

	//스크랩 추가
	@Override
	public int insertScrap(SqlSessionTemplate sst, LHSVo lhs) {
		return sst.insert("freeBoardMapper.insertScrap", lhs);
	}

	//스크랩 삭제
	@Override
	public int deleteScrap(SqlSessionTemplate sst, LHSVo lhs) {
		return sst.insert("freeBoardMapper.deleteScrap", lhs);
	}

	@Override
	public List<BoardVo> selectScrapList(SqlSessionTemplate sst, String userNo) {
		return sst.selectList("freeBoardMapper.selectScrapList", userNo);
	}
	
}

	
