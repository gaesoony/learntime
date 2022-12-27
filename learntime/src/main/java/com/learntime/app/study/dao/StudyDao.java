package com.learntime.app.study.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

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

	//select group type list
	public List<Map<String, String>> selectGroupTypeList(SqlSessionTemplate sst);

	//select group period list
	public List<Map<String, String>> selectGroupPeriodList(SqlSessionTemplate sst);

	//select tech stack list
	public List<Map<String, String>> selectTechStackList(SqlSessionTemplate sst);

	//select tech stack list by type
	public List<Map<String, String>> selectTechStackListByType(SqlSessionTemplate sst, String type);

	//select group list
	public List<Map<String, Object>> selectGroupList(SqlSessionTemplate sst, SearchVo vo);

	//select tech stack list by gno
	public List<Map<String, String>> selectTechStackListByGno(SqlSessionTemplate sst, String gno);

	//select group one
	public Map<String, Object> selectGroupOne(SqlSessionTemplate sst, String gno);

	//select question list by gno
	public List<Map<String, String>> selectQuestionListByGno(SqlSessionTemplate sst, String gno);

	//select tag list by gno
	public List<Map<String, String>> selectTagListByGno(SqlSessionTemplate sst, String gno);

	//select member list by gno
	public List<Map<String, String>> selectMemberListByGno(SqlSessionTemplate sst, String gno);

	//update hit
	public int updateHit(SqlSessionTemplate sst, String gno);

	//insert writer
	public int insertWriter(SqlSessionTemplate sst, GroupVo vo);

	public String selectLikeHateByMno(SqlSessionTemplate sst, Map map);

	public String selectScrapYn(SqlSessionTemplate sst, Map map);



}
