package com.learntime.app.main.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.main.vo.MainVo;
import com.learntime.app.mertoring.vo.MentorVo;

public interface MainDaoSec {

	//멘토링
	public List<MentorVo> selectMentorList(SqlSessionTemplate sst);
	
	//공부인증
	public List<Map<String, Object>> selectList(SqlSessionTemplate sst);

}
