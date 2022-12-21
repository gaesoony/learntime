package com.learntime.app.study.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.study.vo.GroupVo;

@Repository
public class StudyDaoImpl implements StudyDao{

	@Override
	public int insertGroupInfo(SqlSessionTemplate sst, GroupVo vo) {
		System.out.println("그룹인포들어옴");
		return sst.insert("studyMapper.insertGroupInfo", vo);
	}

	@Override
	public int insertGroupQuestion(SqlSessionTemplate sst, String[] str) {
		System.out.println("그룹질문들어옴" + str);
		return sst.insert("studyMapper.insertGroupQuestion", str);
	}

	@Override
	public int insertGroupTechStack(SqlSessionTemplate sst, String[] str) {
		System.out.println("그룹스택들어옴" + str);
		return sst.insert("studyMapper.insertGroupTechStack", str);
	}
	
	@Override
	public int insertCommonTag(SqlSessionTemplate sst, String[] str) {
		System.out.println("그룹태그들어옴1" + str);
		return sst.insert("studyMapper.insertCommonTag", str);
	}
	
	@Override
	public int insertGroupTag(SqlSessionTemplate sst, String[] str) {
		System.out.println("그룹태그들어옴2" + str);
		return sst.insert("studyMapper.insertGroupTag", str);
	}

}
