package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/statistics")
@Controller
public class AdminStatisticsController {
	
	//관리자페이지 통계 - 스터디/프로젝트 조회 (화면)
	@GetMapping("study")
	public String list() {
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
