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
	public String join() {
		return "/admin/member/memberManage";
	}
}
