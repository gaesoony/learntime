package com.learntime.app.mertoring.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.mertoring.vo.MentorVo;

public interface MentoringDao {

	//멘토 등록
	public int mentorRegi(MentorVo vo, SqlSessionTemplate sst);

}
