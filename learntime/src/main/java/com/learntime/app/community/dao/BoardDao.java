package com.learntime.app.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CmtVo;

public interface BoardDao {

	//insert board
	public int write(SqlSessionTemplate sst, BoardVo vo);
	
	//select boardList
	public List<BoardVo> selectBoardList(SqlSessionTemplate sst);

	//selelct boardDetail
	public BoardVo selectBoardDetail(SqlSessionTemplate sst, String bno);
	
	//조회수증가
	public int updateHit(SqlSessionTemplate sst, String bno);

	//select cmt list
	public List<CmtVo> selectCmtList(SqlSessionTemplate sst, String bno);
	
}
