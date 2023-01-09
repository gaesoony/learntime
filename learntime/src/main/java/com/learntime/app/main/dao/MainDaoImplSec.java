package com.learntime.app.main.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.main.vo.MainVo;
import com.learntime.app.mertoring.vo.MentorVo;

@Repository
public class MainDaoImplSec implements MainDaoSec{

	
	//select group list
	@Override
	public List<MentorVo> selectMentorList(SqlSessionTemplate sst) {
		return sst.selectList("mainMapper.selectMentorList");
	}
	
	//select group list
	@Override
	public List<Map<String, Object>> selectList(SqlSessionTemplate sst) {
		return sst.selectList("mainMapper.selectList");
	}

}
