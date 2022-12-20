package com.learntime.app.study.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.study.vo.GroupVo;

public interface StudyDao {
	
	//insert group
	public int insertGroup(SqlSessionTemplate sst, GroupVo vo);

	//insert question
	public int insertQuestion(SqlSessionTemplate sst, GroupVo vo);
	
	//insert tag
	public int insertTag(SqlSessionTemplate sst, GroupVo vo);

}
