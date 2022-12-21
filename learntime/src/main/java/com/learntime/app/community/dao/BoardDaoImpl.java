package com.learntime.app.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.community.vo.BoardVo;

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
	
	
}
