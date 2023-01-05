package com.learntime.app.community.service;

import java.util.List;

import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtLHVo;
import com.learntime.app.community.vo.CmtVo;
import com.learntime.app.community.vo.LHSVo;

public interface BoardService {

	//insert
	public int write(BoardVo vo);
	
	//select list
	public List<BoardVo> select(BoardFilterVo bfv);
	
	//select one
	public BoardVo selectOne(String bno);
	
	
	//select comment list
	public List<CmtVo> selectCmtList(CmtVo cv);
	
	//insert comment
	public int insertCmt(CmtVo cv);
	
	//select category
	public List<CateVo> selectCate();

	//insert category
	public int insertCate(String cateName);

	//스크랩 조회(멤버) 
	public List<LHSVo> selectLHS(LHSVo lhs);

	//스크랩 하기
	public int insertScrap(LHSVo lhs);
	
	//스크랩 삭제
	public int deleteScrap(LHSVo lhs);

	//나의 글 조회
	public List<BoardVo> selecMyList(String userNo);

	//스크랩 글조회
	public List<BoardVo> selectScrapList(String userNo);

	//유저 스크랩 조회
	public LHSVo selectScrap(LHSVo lhs);

	//글 수정
	public int modify(BoardVo vo);

	//글 삭제
	public int delete(BoardVo vo);

	//유저의 특정글 좋아요 조회
	public LHSVo selectUserLike(LHSVo lhsVo);

	//글 좋아요 insert
	public int insertUserLike(LHSVo lhsVo);

	//글 좋아요 delete
	public int deleteUserLike(LHSVo lhsVo);

	//글 좋아요 update
	public int updateUserLike(LHSVo lhsVo);

	//댓글 좋아요 조회
	public CmtLHVo selectUserLike(CmtLHVo cmtLHVo);
	
	//댓글 좋아요 insert
	public int insertUserLike(CmtLHVo cmtLHVo);
	
	//댓글 좋아요 delete
	public int deleteUserLike(CmtLHVo cmtLHVo);

	//댓글 좋아요 update
	public int updateUserLike(CmtLHVo cmtLHVo);


	
	

	
	
}
