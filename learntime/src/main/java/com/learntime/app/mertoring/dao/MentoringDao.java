package com.learntime.app.mertoring.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.mertoring.vo.ApplicationVo;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.MentoringFilterVo;
import com.learntime.app.mertoring.vo.ReviewVo;
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
	public List<MentorVo> selectMentorList(SqlSessionTemplate sst, MentoringFilterVo filter);

	//멘토링 상세조회
	public MentorVo selectMentorDetail(SqlSessionTemplate sst, String no);

	//특정 멘토링 리뷰조회
	public List<ReviewVo> selectReviewByNo(SqlSessionTemplate sst, String no);

	//멘토 스케줄 시간조회
	public List<ScheduleVo> selectMentorSchedule(SqlSessionTemplate sst, ScheduleVo sv);

	//멘토링 신청
	public int insertApplication(SqlSessionTemplate sst, ApplicationVo application);

	//신청한 멘토링 조회
	public List<ApplicationVo> selectApplication(SqlSessionTemplate sst, String userNo);

	//리뷰 조회
	public List<ReviewVo> selectReview(SqlSessionTemplate sst, MentoringFilterVo mfv);

	//멘토링 요청 조회
	public List<ApplicationVo> selectRequestList(SqlSessionTemplate sst, String myNo);

	//멘토링 수락
	public int updateApplyYn(SqlSessionTemplate sst, String no);

	//멘토링 완료 처리
	public int updateCompleteYn(SqlSessionTemplate sst, String no);

	//멘토 리뷰 작성
	public int insertReview(SqlSessionTemplate sst, Map<String, Object> reviewInfo);

	//멘토 수정
	public int updateMentor(SqlSessionTemplate sst, MentorVo vo);

}
