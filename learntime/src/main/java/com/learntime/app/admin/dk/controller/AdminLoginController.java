package com.learntime.app.admin.dk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminLoginController {
	
	@GetMapping("/login")
	public String adminLogin() {
		return "/admin/admin-login";
	}
	
	@GetMapping("/member/manage")
	public String memberManage() {
		return "/admin/member/memberManage";
	}
	
	@GetMapping("/member/manage/detail")
	public String memberDetail() {
		return "/admin/member/memberDetail";
	}
	
	@GetMapping("/member/createOperator")
	public String createOperator() {
		return "/admin/member/createOperator";
	}
	
	@GetMapping("/member/grade")
	public String memberGrade() {
		return "/admin/member/memberGrade";
	}
}
