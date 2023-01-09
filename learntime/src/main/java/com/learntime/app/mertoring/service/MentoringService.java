package com.learntime.app.mertoring.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.mertoring.vo.ApplicationVo;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.MentoringFilterVo;
import com.learntime.app.mertoring.vo.ReviewVo;
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
	public List<MentorVo> selectMentorList(MentoringFilterVo mfv);

	//멘토링 상세조회
	public MentorVo selectMentorDetail(String no);

	//특정 멘토링 리뷰 조회
	public List<ReviewVo> selectReviewList(String no);

	//멘토 스케줄 시간 조회
	public List<ScheduleVo> selectMentorSchedule(ScheduleVo sv);

	//멘토링 신청
	public int insertApplication(ApplicationVo application);

	//신청한 멘토링 조회
	public List<ApplicationVo> selectApplication(String userNo);

	//멘토링 리뷰 조회
	public List<ReviewVo> selectReviewList(MentoringFilterVo mfv);

	//멘토링 요청 조회
	public List<ApplicationVo> selectRequestList(String myNo);

	//멘토링 수락
	public int updateApplyYn(String no);

	//멘토링 완료 처리
	public int updateCompleteYn(String no);

	//멘토 리뷰 작성
	public int insertReview(Map<String, Object> reviewInfo);

	//멘토 수정
	public int mentorModify(MentorVo vo);
	
	
}
