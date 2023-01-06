package com.learntime.app.mertoring.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.ScheduleVo;

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

	//직무 받기
	@Override
	public List<Map<String, Object>> selectJob(SqlSessionTemplate sst) {
		return sst.selectList("mentorMapper.selectJob");
	}

	//카테고리 받기
	@Override
	public List<Map<String, Object>> selectCateNo(SqlSessionTemplate sst) {
		return sst.selectList("mentorMapper.selectCateNo");
	}

	//멘토 정보
	@Override
	public MentorVo selectMentor(SqlSessionTemplate sst, String no) {
		return sst.selectOne("mentorMapper.selectMentor", no);
	}

	//스케줄 등록
	@Override
	public int insertSchedule(SqlSessionTemplate sst, List<ScheduleVo> scheduleList) {
		return sst.insert("mentorMapper.insertSchedule", scheduleList);
	}

	//멘토 리스트조회
	@Override
	public List<MentorVo> selectMentorList(SqlSessionTemplate sst) {
		return sst.selectList("mentorMapper.selectMentorList");
	}
	
	

}
