package com.learntime.app.admin.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.admin.service.AdminDashboardService;

@RequestMapping("admin/statistics")
@Controller
public class AdminStatisticsController {
	
	@Autowired
	@Qualifier("adminDashboardServiceImpl")
	private AdminDashboardService adminDashboardService;
	
	//관리자페이지 통계 - 스터디/프로젝트 조회 (화면)
	@GetMapping("study")
	public String list(Model model) {
		
		Map map = new HashMap<String, Object>();
		map.put("status", "0"); //오늘
		
		//오늘 생성 스터디 수
		int todayStudyCnt = adminDashboardService.selectStudyCnt(map);
		model.addAttribute("todayStudyCnt", todayStudyCnt);
		
		//오늘 생성 프로젝트 수
		int todayProjectCnt = adminDashboardService.selectProjectCnt(map);
		model.addAttribute("todayProjectCnt", todayProjectCnt);
		
		//오늘 가입신청 수
		int todayGroupApplyCnt = adminDashboardService.selectGroupApplyCnt(map);
		model.addAttribute("todayGroupApplyCnt", todayGroupApplyCnt);
		
		map.put("status", "1"); //어제
		
		//어제 생성 스터디 수
		int yesterdayStudyCnt = adminDashboardService.selectStudyCnt(map);
		model.addAttribute("yesterdayStudyCnt", yesterdayStudyCnt);
		
		//어제 생성 프로젝트 수
		int yesterdayProjectCnt = adminDashboardService.selectProjectCnt(map);
		model.addAttribute("yesterdayProjectCnt", yesterdayProjectCnt);
		
		//어제 가입신청 수
		int yesterdayGroupApplyCnt = adminDashboardService.selectGroupApplyCnt(map);
		model.addAttribute("yesterdayGroupApplyCnt", yesterdayGroupApplyCnt);
		
		//기술스택이름, 각각 몇개인지 리스트 조회
		
		//모집유형(스터디/프로젝트)
		
		//진행방식(온라인/오프라인)
		
		//모집상태(모집중/모집완료)
		
		//진행기간??
		
		
		return "admin/statistics/study";
	}
	
	//관리자페이지 통계 - 멘토링 조회 (화면)
	@GetMapping("mentoring")
	public String mentoring() {
		return "admin/statistics/mentoring";
	}
	
	//관리자페이지 통계 - 공부인증 조회 (화면)
	@GetMapping("makegrass")
	public String makegrass() {
		return "admin/statistics/makegrass";
	}
	
	//관리자페이지 통계 - 지식인 조회 (화면)
	@GetMapping("learning")
	public String learning() {
		return "admin/statistics/learning";
	}

}
