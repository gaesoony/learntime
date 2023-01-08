package com.learntime.app.mertoring.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.mertoring.vo.ApplicationVo;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.ReviewVo;
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

	//멘토 상세조회
	@Override
	public MentorVo selectMentorDetail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("mentorMapper.selectMentoring", no);
	}

	//특정 멘토링 리뷰조회
	@Override
	public List<ReviewVo> selectReviewByNo(SqlSessionTemplate sst, String no) {
		return sst.selectList("mentorMapper.selectReviewByNo", no);
	}

	//멘토 스케줄 시간조회
	@Override
	public List<ScheduleVo> selectMentorSchedule(SqlSessionTemplate sst, ScheduleVo sv) {
		return sst.selectList("mentorMapper.selectmentorSchedule", sv);
	}

	//멘토링 신청
	@Override
	public int insertApplication(SqlSessionTemplate sst, ApplicationVo application) {
		return sst.insert("mentorMapper.insertApplication", application);
	}

	//신청한 멘토링 조회
	@Override
	public List<ApplicationVo> selectApplication(SqlSessionTemplate sst, String userNo) {
		return sst.selectList("mentorMapper.selectApplication", userNo);
	}

	//멘토링 리뷰 조회
	@Override
	public List<ReviewVo> selectReview(SqlSessionTemplate sst) {
		return sst.selectList("mentorMapper.selectReview");
	}
	
	

}
