package com.learntime.app.study.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.study.vo.GroupVo;

@Repository
public class StudyDaoImpl implements StudyDao{

	@Override
	public int insertGroup(SqlSessionTemplate sst, GroupVo vo) {
		System.out.println("기술스택:"+vo.getTechStackNo());
		return sst.insert("studyMapper.insertGroup", vo);
	}

	@Override
	public int insertQuestion(SqlSessionTemplate sst, GroupVo vo) {
		
		for(int i=0; i<vo.getQuestion().length; i++) {
			int result = sst.insert("studyMapper.insertQuestion", vo.getQuestion()[i]);
			if(result == 0) return 0;
		}
		return 1;
	}

	@Override
	public int insertTag(SqlSessionTemplate sst, GroupVo vo) {
		return 0;
	}

}
