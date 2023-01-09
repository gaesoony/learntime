package com.learntime.app.main.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.main.dao.MainDao;
import com.learntime.app.main.dao.MainDaoSec;
import com.learntime.app.main.vo.MainVo;
import com.learntime.app.mertoring.vo.MentorVo;

@Service
public class MainServiceImplSec implements MainServiceSec{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MainDaoSec dao;

	//멘토링 리스트 조회
	@Override
	public List<MentorVo> selectMentorList() {
		List<MentorVo> result = dao.selectMentorList(sst);
		return result;
	}
	//공부인증 리스트
	@Override
	public List<Map<String, Object>> selectList() {
		List<Map<String, Object>> result = dao.selectList(sst);
		return result;
	}

}
