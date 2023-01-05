package com.learntime.app.mertoring.service;

import com.learntime.app.mertoring.vo.MentorVo;

public interface MentoringService {

	//멘토 등록
	public int mentorRegister(MentorVo vo);

	//멘토링 등록
	public int registerMentoring(MentorVo mv);
	
	
}
