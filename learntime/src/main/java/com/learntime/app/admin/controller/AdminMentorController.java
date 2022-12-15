package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/mentor")
public class AdminMentorController {
	
	@GetMapping("/mentoring")
	public String mentoring() {
		return "/admin/mentor/mentoring";
	}
	
	@GetMapping("/review")
	public String review() {
		return "/admin/mentor/review";
	}

}
