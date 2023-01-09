package com.learntime.app.main.service;

import java.util.List;
import java.util.Map;

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

	//스터디 리스트 조회
	@Override
	public List<Map<String, String>> selectGroupList() {
		List<Map<String, String>> result = dao.selectGroupList(sst);
		return result;
	}
	

}
