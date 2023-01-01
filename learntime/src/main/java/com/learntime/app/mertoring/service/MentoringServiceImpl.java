package com.learntime.app.mertoring.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.mertoring.dao.MentoringDao;
import com.learntime.app.mertoring.vo.MentorVo;

@Service
public class MentoringServiceImpl implements MentoringService{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MentoringDao dao;
	
	//멘토등록
	@Override
	public int mentorRegister(MentorVo vo) {
		return dao.mentorRegi(vo, sst);
	}
}
