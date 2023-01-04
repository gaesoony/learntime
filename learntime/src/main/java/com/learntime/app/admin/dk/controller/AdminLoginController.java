package com.learntime.app.admin.dk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminLoginController {
	//관리자 로그인
	@GetMapping("/login")
	public String adminLogin() {
		return "/admin/admin-login";
	}
	
	
	
}
