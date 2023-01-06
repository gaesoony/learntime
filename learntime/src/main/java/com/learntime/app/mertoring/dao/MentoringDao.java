package com.learntime.app.mertoring.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.ScheduleVo;

public interface MentoringDao {

	//멘토 등록
	public int mentorRegi(MentorVo vo, SqlSessionTemplate sst);

	//멘토링 등록
	public int mentoringRegi(MentorVo mv, SqlSessionTemplate sst);

	//직무 받기
	public List<Map<String, Object>> selectJob(SqlSessionTemplate sst);

	//카테고리 받기
	public List<Map<String, Object>> selectCateNo(SqlSessionTemplate sst);

	//멘토정보 받아오기
	public MentorVo selectMentor(SqlSessionTemplate sst, String no);

	//스케줄 등록하기
	public int insertSchedule(SqlSessionTemplate sst, List<ScheduleVo> scheduleList);

	//멘토 리스트조회
	public List<MentorVo> selectMentorList(SqlSessionTemplate sst);

}
