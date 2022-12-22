package com.learntime.app.community.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.community.dao.BoardDao;
import com.learntime.app.community.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao dao;

	@Autowired
	private SqlSessionTemplate sst;

	@Transactional
	@Override
	public int write(BoardVo vo) {

		return dao.write(sst, vo);
	}

	@Override
	public List<BoardVo> select() {
		
		return dao.selectBoardList(sst);
	}

	
	//자유게시판 상세 보기
	@Transactional
	@Override
	public BoardVo selectOne(String bno) {
		
		dao.updateHit(sst, bno);
		
		return dao.selectBoardDetail(sst, bno);
	}

	//자유게시판 댓글 쓰기
	@Override
	public int write(String bno) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	

}
