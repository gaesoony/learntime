package com.learntime.app.main.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.mertoring.vo.MentorVo;

public interface MainServiceSec {
	
	//멘토링 리스트 조회
	public List<MentorVo> selectMentorList();
		
	//공부인증 리스트 조회
	public List<Map<String, Object>> selectList();

}
