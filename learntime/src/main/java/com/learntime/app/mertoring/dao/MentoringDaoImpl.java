package com.learntime.app.mertoring.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.mertoring.vo.MentorVo;

@Repository
public class MentoringDaoImpl implements MentoringDao{

	//멘토등록
	@Override
	public int mentorRegi(MentorVo vo, SqlSessionTemplate sst) {
		return sst.insert("mentorMapper.registerMentor", vo);
		
	}

	//멘토링등록(멘토 업데이트)
	@Override
	public int mentoringRegi(MentorVo mv, SqlSessionTemplate sst) {
		return sst.update("mentorMapper.registerMentoring", mv);
	}
	
	

}
