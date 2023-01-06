package com.learntime.app.mertoring.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.ScheduleVo;

public interface MentoringService {

	//멘토 등록
	public int mentorRegister(MentorVo vo);

	//멘토링 등록
	public int registerMentoring(MentorVo mv);

	//직무 조회
	public List<Map<String, Object>> selectJob();

	//카테고리 조회
	public List<Map<String, Object>> selectCateNo();

	//멘토 번호 조회
	public MentorVo selectMentor(String no);

	//스케줄 등록
	public int registerSchedule(List<ScheduleVo> scheduleList);

	//멘토 리스트 조회
	public List<MentorVo> selectMentorList();
	
	
}
