package com.learntime.app.study.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.study.dao.StudyDao;
import com.learntime.app.study.vo.GroupVo;

@Service
public class StudyServiceImpl implements StudyService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private StudyDao dao;

	//스터디/프로젝트 모집
	@Override
	public int recruit(GroupVo vo) {
		vo.strTechStachNoList();
		System.out.println(vo);
		if(vo.getQuestion() == null) {
			int result1 = dao.insertGroup(sst, vo);
			return result1;
		}
		
		if(vo.getQuestion() != null) {
			int result2 = dao.insertGroup(sst, vo);
			int result3 = 0;
			if(result2 == 1) {
				result3 = dao.insertQuestion(sst, vo);
			}
			return result2 * result3;
		}
		
		return 0;

	}

}
