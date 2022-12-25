package com.learntime.app.community.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.community.dao.BoardDao;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;

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
		
		//조회수 증가
		dao.updateHit(sst, bno);
		
		return dao.selectBoardDetail(sst, bno);
	}

	//자유게시판 댓글 조회
	@Override
	public List<CmtVo> selectCmtList(String bno) {
		return dao.selectCmtList(sst, bno);
	}

	
	//자유게시판 댓글쓰기
	@Transactional
	@Override
	public int insertCmt(CmtVo cv) {
		
		return dao.insertCmt(sst, cv);
		
	}

	//자유게시판 카테고리 불러오기
	@Override
	public List<CateVo> selectCate() {
		return dao.selectCateList(sst);
	}

	//자유게시판 카테고리 추가하기
	@Transactional
	@Override
	public int insertCate(String cateName) {
		return dao.insertCategory(sst, cateName);
	}
	
	
	

}
