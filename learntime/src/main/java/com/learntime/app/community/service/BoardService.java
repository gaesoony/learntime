package com.learntime.app.community.service;

import java.util.List;

import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
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
	public List<CmtVo> selectCmtList(String bno);


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


	
	
}
