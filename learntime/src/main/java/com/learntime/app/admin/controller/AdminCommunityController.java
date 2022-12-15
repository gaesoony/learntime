package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/community")
public class AdminCommunityController {
	
	@GetMapping("/list")
	public String adminCommunity() {
		return "/admin/community/adminCommunity";
	}
	
	@GetMapping("/detail")
	public String adminCommunityDetail() {
		return "/admin/community/adminCommunityDetail";
	}
	
	@GetMapping("/modify")
	public String adminCommunityModify() {
		return "/admin/community/adminCommunityModify";
	}

}
