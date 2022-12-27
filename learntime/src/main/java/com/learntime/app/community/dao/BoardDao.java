package com.learntime.app.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;
import com.learntime.app.community.vo.LHSVo;

public interface BoardDao {

	//insert board
	public int write(SqlSessionTemplate sst, BoardVo vo);
	
	//select boardList
	public List<BoardVo> selectBoardList(SqlSessionTemplate sst);

	//select boardDetail
	public BoardVo selectBoardDetail(SqlSessionTemplate sst, String bno);
	
	//조회수증가
	public int updateHit(SqlSessionTemplate sst, String bno);

	//select comment list
	public List<CmtVo> selectCmtList(SqlSessionTemplate sst, String bno);
	
	//insert comment
	public int insertCmt(SqlSessionTemplate sst, CmtVo cv);

	//select category list
	public List<CateVo> selectCateList(SqlSessionTemplate sst);

	//insert category
	public int insertCategory(SqlSessionTemplate sst, String cateName);

	//유저 스크랩 조회
	public List<LHSVo> selectLHS(SqlSessionTemplate sst, LHSVo lhs);

	//스크랩 추가
	public int insertScrap(SqlSessionTemplate sst, LHSVo lhs);
	
	//스크랩 삭제
	public int deleteScrap(SqlSessionTemplate sst, LHSVo lhs);

	//나의 글 조회
	public List<BoardVo> selectMyList(SqlSessionTemplate sst, String userNo);

	//스크랩 글 조회
	public List<BoardVo> selectScrapList(SqlSessionTemplate sst, String userNo);
	
}
