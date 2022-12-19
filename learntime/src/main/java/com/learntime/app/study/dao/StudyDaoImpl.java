package com.learntime.app.study.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.study.vo.GroupVo;

@Repository
public class StudyDaoImpl implements StudyDao{

	@Override
	public int insertGroup(SqlSessionTemplate sst, GroupVo vo) {
		return sst.insert("studyMapper.insertGroup", vo);
	}

}
