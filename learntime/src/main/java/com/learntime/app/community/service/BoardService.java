package com.learntime.app.community.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.community.dao.BoardDao;
import com.learntime.app.community.vo.BoardVo;

@Service
public class BoardService {

	@Autowired
	private BoardDao dao;

	@Autowired
	private SqlSessionTemplate sst;

	@Transactional
	public int write(BoardVo vo) {

		int result = dao.write(sst, vo);

		return dao.write(sst, vo);
	}

}
