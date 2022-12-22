package com.learntime.app.study.dao;

import java.util.List;
import java.util.Map;

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

	//select my group list
	public List<Map<String, String>> selectMyGroupList(SqlSessionTemplate sst, String no);

	//select popular tag list
	public List<Map<String, String>> selectPopularTagList(SqlSessionTemplate sst);

	//select popular tech stack list
	public List<Map<String, String>> selectPopularTechStackList(SqlSessionTemplate sst);

}
