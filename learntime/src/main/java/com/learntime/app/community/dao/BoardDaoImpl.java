package com.learntime.app.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CmtVo;

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
	
	
}
