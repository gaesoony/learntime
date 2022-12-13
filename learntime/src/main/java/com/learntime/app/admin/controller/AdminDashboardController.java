package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/dashboard")
@Controller
public class AdminDashboardController {
	
	//관리자페이지 대시보드 조회 (화면)
	@GetMapping("")
	public String dashboard() {
		return "admin/dashboard/list";
	}
	
	//관리자페이지 대시보드 - 관리자 리스트 조회 (화면)
	@GetMapping("manager/list")
	public String managerList() {
		return "admin/dashboard/manager/list";
	}
	
	//관리자페이지 대시보드 - 관리자 로그 조회 (화면)
	@GetMapping("manager/log")
	public String managerLog() {
		return "admin/dashboard/manager/log";
	}
	
	//관리자페이지 대시보드 - 관리자 프로필 수정 (화면)
	@GetMapping("manager/profile")
	public String managerProfile() {
		return "admin/dashboard/manager/profile";
	}

}
