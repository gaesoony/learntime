package com.learntime.app.community.service;

import java.util.List;

import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;

public interface BoardService {

	//insert
	public int write(BoardVo vo);
	
	
	//select list
	public List<BoardVo> select();
	
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


	
}
