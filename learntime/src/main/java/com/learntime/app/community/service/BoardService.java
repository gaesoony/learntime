package com.learntime.app.community.service;

import java.util.List;

import com.learntime.app.community.vo.BoardVo;

public interface BoardService {

	//insert
	public int write(BoardVo vo);
	
	
	//select list
	public List<BoardVo> select();
	
	//select one
	public BoardVo selectOne(String bno);

	
}
