package com.learntime.app.study.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.study.vo.GroupVo;

@Repository
public class StudyDaoImpl implements StudyDao{

	//그룹 정보 insert
	@Override
	public int insertGroupInfo(SqlSessionTemplate sst, GroupVo vo) {
		return sst.insert("studyMapper.insertGroupInfo", vo);
	}

	//그룹 가입질문 insert
	@Override
	public int insertGroupQuestion(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertGroupQuestion", str);
	}

	//그룹 기술스택 insert
	@Override
	public int insertGroupTechStack(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertGroupTechStack", str);
	}
	
	//공통 해시태그 insert
	@Override
	public int insertCommonTag(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertCommonTag", str);
	}
	
	//그룹 해시태그 insert
	@Override
	public int insertGroupTag(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertGroupTag", str);
	}

	//내가 가입한 그룹 select
	@Override
	public List<Map<String, String>> selectMyGroupList(SqlSessionTemplate sst, String no) {
		return sst.selectList("studyMapper.selectMyGroupList", no);
	}

	//인기 태그 리스트 select
	@Override
	public List<Map<String, String>> selectPopularTagList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectPopularTagList");
	}

	//인기 기술스택 리스트 select
	@Override
	public List<Map<String, String>> selectPopularTechStackList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectPopularTechStackList");
	}

}
