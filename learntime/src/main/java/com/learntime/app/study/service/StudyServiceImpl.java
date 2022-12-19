package com.learntime.app.study.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.study.vo.GroupVo;

@Service
public class StudyServiceImpl implements StudyService{
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int recruit(GroupVo vo) {
		return 0;
	}

}
