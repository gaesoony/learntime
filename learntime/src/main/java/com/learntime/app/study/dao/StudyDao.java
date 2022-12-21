package com.learntime.app.study.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.study.vo.GroupVo;

public interface StudyDao {
	
	//insert group info
	public int insertGroupInfo(SqlSessionTemplate sst, GroupVo vo);
	
	//insert group question
	public int insertGroupQuestion(SqlSessionTemplate sst, String[] str);
	
	//insert group tech stack
	public int insertGroupTechStack(SqlSessionTemplate sst, String[] str);
	
	//insert common tag
	public int insertCommonTag(SqlSessionTemplate sst, String[] str);
	
	//insert group tag
	public int insertGroupTag(SqlSessionTemplate sst, String[] str);

}
