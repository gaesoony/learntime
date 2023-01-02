package com.learntime.app.study.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.mystudy.vo.ProfileVo;
import com.learntime.app.study.vo.ApplyVo;
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

	//delete group
	public int deleteGroup(SqlSessionTemplate sst, String gno);

	//edit group
	public int updateGroupInfo(SqlSessionTemplate sst, GroupVo vo);

	//delete group question
	public int deleteGroupQuestion(SqlSessionTemplate sst, String no);

	//delete group tech stack
	public int deleteGroupTechStack(SqlSessionTemplate sst, String no);

	//delete group tag
	public int deleteGroupTag(SqlSessionTemplate sst, String no);

	//insert group member
	public int insertGroupMember(SqlSessionTemplate sst, ApplyVo vo);

	//update group profile
	public int updateGroupProfile(SqlSessionTemplate sst, ProfileVo vo);

	//select group member list by status
	public List<Map<String, String>> selectGroupMemberListByStatus(SqlSessionTemplate sst, Map map);

	//select answer list by recruit_list no
	public List<Map<String, String>> selectAnswerListByNo(SqlSessionTemplate sst, String rno);

	//insert answer
	public int insertAnswer(SqlSessionTemplate sst, Map map);

	//confirm apply 
	public int confirm(SqlSessionTemplate sst, String rno);

	//reject apply
	public int reject(SqlSessionTemplate sst, String rno);

	//delegate
	public int delegate(SqlSessionTemplate sst, String rno);

	//leave Rep
	public int leaveRep(SqlSessionTemplate sst);

	public int quit(SqlSessionTemplate sst, String rno);

	public int kick(SqlSessionTemplate sst, String rno);

	public int addScrap(SqlSessionTemplate sst, SearchVo sv);

	public int deleteScrap(SqlSessionTemplate sst, SearchVo sv);

	public int like(SqlSessionTemplate sst, SearchVo sv);

	public int hate(SqlSessionTemplate sst, SearchVo sv);

	public int deleteLikeHate(SqlSessionTemplate sst, SearchVo sv);



}
