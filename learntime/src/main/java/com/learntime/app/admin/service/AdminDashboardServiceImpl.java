package com.learntime.app.admin.service;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.dao.AdminDashboardDao;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.QuestionVo;

@Service
public class AdminDashboardServiceImpl implements AdminDashboardService{
	
	@Autowired
	private AdminDashboardDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Map<String, Object>> selectLearningList() {
		return dao.selectLearningList(sst);
	}

	@Override
	public List<NoticeVo> selectNoticeList() {
		return dao.selectNoticeList(sst);
	}

	@Override
	public List<FaqVo> selectFaqList() {
		return dao.selectFaqList(sst);
	}

	@Override
	public List<QuestionVo> selectQuestionList() {
		return dao.selectQuestionList(sst);
	}

	@Override
	public int selectVisitorCnt(Map map) {
		return dao.selectVisitorCnt(sst, map);
	}

	@Override
	public int selectJoinCnt(Map map) {
		return dao.selectJoinCnt(sst, map);
	}

	@Override
	public int selectQuitCnt(Map map) {
		return dao.selectQuitCnt(sst, map);
	}

	@Override
	public int selectPageViewCnt(Map map) {
		return dao.selectPageViewCnt(sst, map);
	}

	@Override
	public List<Map<String, Object>> selectWeekPageView() {
		return dao.selectWeekPageView(sst);
	}

	@Override
	public List<Map<String, Object>> selectWeekVisitor() {
		return dao.selectWeekVisitor(sst);
	}

	@Override
	public List<Map<String, Object>> selectWeekSummary() {
		
		List list = new ArrayList<Map<String, Object>>();
		
		//날짜 
		for(int i=0; i<=6; i++) {
			Map resultMap = new HashMap<String, Object>();
			Map map = new HashMap<String, Object>();
			map.put("status", i);
			
			//날짜 넣기
			Calendar cal = Calendar.getInstance();
			String format = "yyyy-MM-dd";
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			cal.add(cal.DATE, -i); //날짜를 하루 뺀다.
			String date = sdf.format(cal.getTime());
			
			resultMap.put("date", date);
			
			//페이지뷰 넣기
			int pageViewCnt = dao.selectPageViewCnt(sst, map);
			
			//방문자수 넣기
			int visitorCnt = dao.selectVisitorCnt(sst, map);
			
			//가입자수 넣기
			int joinCnt = dao.selectJoinCnt(sst, map);
			
			//탈퇴자수 넣기
			int quitCnt = dao.selectQuitCnt(sst, map);
			
			resultMap.put("pageViewCnt", pageViewCnt);
			resultMap.put("visitorCnt", visitorCnt);
			resultMap.put("joinCnt", joinCnt);
			resultMap.put("quitCnt", quitCnt);

			list.add(resultMap);
			
		}
		
		return list;
	}

	@Override
	public int selectWeekPageViewSum() {
		return dao.selectWeekPageViewSum(sst);
	}

	@Override
	public int selectWeekVisitorSum() {
		return dao.selectWeekVisitorSum(sst);
	}

	@Override
	public int selectWeekJoinSum() {
		return dao.selectWeekJoinSum(sst);
	}

	@Override
	public int selectWeekQuitSum() {
		return dao.selectWeekQuitSum(sst);
	}

	@Override
	public int selectMonthPageViewSum() {
		return dao.selectMonthPageViewSum(sst);
	}

	@Override
	public int selectMonthVisitorSum() {
		return dao.selectMonthVisitorSum(sst);
	}

	@Override
	public int selectMonthJoinSum() {
		return dao.selectMonthJoinSum(sst);
	}

	@Override
	public int selectMonthQuitSum() {
		return dao.selectMonthQuitSum(sst);
	}

	@Override
	public int selectStudyCnt(Map map) {
		return dao.selectStudyCnt(sst, map);
	}

	@Override
	public int selectProjectCnt(Map map) {
		return dao.selectProjectCnt(sst, map);
	}

	@Override
	public int selectGroupApplyCnt(Map map) {
		return dao.selectGroupApplyCnt(sst, map);
	}

}
