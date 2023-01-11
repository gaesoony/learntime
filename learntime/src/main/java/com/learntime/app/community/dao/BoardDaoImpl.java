package com.learntime.app.community.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.common.page.PageVo;
import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtLHVo;
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
	public List<BoardVo> selectBoardList(SqlSessionTemplate sst, BoardFilterVo bfv) {
		int offset = (bfv.getCurrentPage()-1) * bfv.getBoardLimit();
		int limit = bfv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("freeBoardMapper.selectList",bfv,rb);
	}
	
	//나의 글 조회
	@Override
	public List<BoardVo> selectMyList(SqlSessionTemplate sst, Map<String, String> filter) {
		return sst.selectList("freeBoardMapper.selectMyList", filter);
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
	public List<CmtVo> selectCmtList(SqlSessionTemplate sst, CmtVo cv) {
		return sst.selectList("freeBoardMapper.selectCmtList", cv);
		
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
	//스크랩 글 목록 조회
	@Override
	public List<BoardVo> selectScrapList(SqlSessionTemplate sst, Map<String, String> filter) {
		return sst.selectList("freeBoardMapper.selectScrapList", filter);
	}

	//유저 스크랩 조회
	@Override
	public LHSVo selectScrapList(SqlSessionTemplate sst, LHSVo lhs) {
		return sst.selectOne("freeBoardMapper.selectScrap", lhs);
	}

	//커뮤니티 글 수정
	@Override
	public int update(SqlSessionTemplate sst, BoardVo vo) {
		return sst.update("freeBoardMapper.update", vo);
	}

	//커뮤니티 글 삭제
	@Override
	public int delete(SqlSessionTemplate sst, String bno) {
		return sst.delete("freeBoardMapper.delete", bno);
	}

	//유저의 특정글 좋아요 조회
	@Override
	public LHSVo selectUserLike(SqlSessionTemplate sst, LHSVo lhsVo) {
		return sst.selectOne("freeBoardMapper.selectUserLike", lhsVo);
	}

	//유저의 특정글 좋아요
	@Override
	public int insertUserLike(SqlSessionTemplate sst, LHSVo lhsVo) {
		return sst.insert("freeBoardMapper.insertUserLike", lhsVo);
	}

	//유저의 특정글 좋아요 지우기
	@Override
	public int deleteUserLike(SqlSessionTemplate sst, LHSVo lhsVo) {
		return sst.delete("freeBoardMapper.deleteUserLike", lhsVo);
	}

	//유저의 특정글 좋아요 업데이트
	@Override
	public int updateUserLike(SqlSessionTemplate sst, LHSVo lhsVo) {
		return sst.update("freeBoardMapper.updateUserLike", lhsVo);
	}
	
	@Override
	public CmtLHVo selectUserLike(SqlSessionTemplate sst, CmtLHVo cmtLHVo) {
		return sst.selectOne("freeBoardMapper.selectUserCmtLike", cmtLHVo);
	}

	@Override
	public int insertUserLike(SqlSessionTemplate sst, CmtLHVo cmtLHVo) {
		return sst.insert("freeBoardMapper.insertUserCmtLike", cmtLHVo);
	}

	@Override
	public int deleteUserLike(SqlSessionTemplate sst, CmtLHVo cmtLHVo) {
		return sst.delete("freeBoardMapper.deleteUserCmtLike", cmtLHVo);
	}

	@Override
	public int updateUserLike(SqlSessionTemplate sst, CmtLHVo cmtLHVo) {
		return sst.update("freeBoardMapper.updateUserCmtLike", cmtLHVo);
	}

	// 댓글 삭제
	@Override
	public int deleteCmt(SqlSessionTemplate sst, String commentNo) {
		return sst.update("freeBoardMapper.deleteCmt", commentNo);
	}

	// 글 수 조회
	@Override
	public int getBoardCnt(SqlSessionTemplate sst, BoardFilterVo bfv) {
		return sst.selectOne("freeBoardMapper.boardCnt", bfv);
	}


	
	
	
}

	
