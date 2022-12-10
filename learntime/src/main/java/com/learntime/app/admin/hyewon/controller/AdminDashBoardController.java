package com.learntime.app.admin.hyewon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminDashBoardController {
	
	//관리자페이지 대시보드 조회
	@GetMapping("/dashboard")
	public String list() {
		return "admin/dashboard/dashboard";
	}

}
