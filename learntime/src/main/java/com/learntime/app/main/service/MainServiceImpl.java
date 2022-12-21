package com.learntime.app.main.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.main.dao.MainDao;
import com.learntime.app.main.vo.MainVo;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MainDao dao;

	//런타임 메인 페이지 조회
	@Override
	public MainVo selectMain() {
		return dao.selectMain(sst);
	}

}
