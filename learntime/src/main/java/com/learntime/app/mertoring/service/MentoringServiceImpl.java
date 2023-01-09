package com.learntime.app.mertoring.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.mertoring.dao.MentoringDao;
import com.learntime.app.mertoring.vo.ApplicationVo;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.MentoringFilterVo;
import com.learntime.app.mertoring.vo.ReviewVo;
import com.learntime.app.mertoring.vo.ScheduleVo;

@Service
public class MentoringServiceImpl implements MentoringService{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MentoringDao dao;
	
	//멘토등록
	@Override
	public int mentorRegister(MentorVo vo) {
		return dao.mentorRegi(vo, sst);
	}

	//멘토링 등록
	@Transactional
	@Override
	public int registerMentoring(MentorVo mv) {
		return dao.mentoringRegi(mv, sst);
	}

	
	//직무받아오기
	@Override
	public List<Map<String, Object>> selectJob() {
		return dao.selectJob(sst);
		
	}

	//카테고리 받아오기
	@Override
	public List<Map<String, Object>> selectCateNo() {
		return dao.selectCateNo(sst);
	}

	//멘토번호 받기
	@Override
	public MentorVo selectMentor(String no) {
		return dao.selectMentor(sst, no);
		
	}
	
	//스케줄 등록
	@Transactional
	@Override
	public int registerSchedule(List<ScheduleVo> scheduleList) {
		return dao.insertSchedule(sst, scheduleList);
	}

	//멘토리스트 조회
	@Override
	public List<MentorVo> selectMentorList(MentoringFilterVo filter) {
		return dao.selectMentorList(sst, filter);
	}

	//멘토링 상세조회
	@Override
	public MentorVo selectMentorDetail(String no) {
		return dao.selectMentorDetail(sst, no);
	}

	//특정 멘토링 리뷰조회
	@Override
	public List<ReviewVo> selectReviewList(String no) {
		return dao.selectReviewByNo(sst, no);
	}

	//멘토 스케줄 시간조회
	@Override
	public List<ScheduleVo> selectMentorSchedule(ScheduleVo sv) {
		return dao.selectMentorSchedule(sst, sv);
	}

	//멘토링 신청
	@Transactional
	@Override
	public int insertApplication(ApplicationVo application) {
		return dao.insertApplication(sst, application);
	}

	//신청한 멘토링 조회
	@Override
	public List<ApplicationVo> selectApplication(String userNo) {
		return dao.selectApplication(sst, userNo);
	}
	//멘토링 리뷰 조회
	@Override
	public List<ReviewVo> selectReviewList(MentoringFilterVo mfv) {
		return dao.selectReview(sst, mfv);
	}

	//들어온 멘토링 조회
	@Override
	public List<ApplicationVo> selectRequestList(String myNo) {
		return dao.selectRequestList(sst, myNo);
	}

	//멘토링 수락
	@Transactional
	@Override
	public int updateApplyYn(String no) {
		return dao.updateApplyYn(sst, no);
	}

	//멘토링 완료 처리
	@Transactional
	@Override
	public int updateCompleteYn(String no) {
		return dao.updateCompleteYn(sst, no);
	}

	@Transactional
	@Override
	public int insertReview(Map<String, Object> reviewInfo) {
		return dao.insertReview(sst, reviewInfo);
	}

	@Transactional
	@Override
	public int mentorModify(MentorVo vo) {
		return dao.updateMentor(sst, vo);
	}
	
	
}
