package com.learntime.app.adminTemp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminController {

	@GetMapping("/template")
	public String join() {
		return "/admin/adminTemplate";
	}
	
	@GetMapping("/community/board")
	public String adminCommunity() {
		return "/community/adminCommunity";
	}
	
	@GetMapping("/community/board/detail")
	public String adminCommunityDetail() {
		return "/community/adminCommunityDetail";
	}
	
	@GetMapping("/community/board/modify")
	public String adminCommunityModify() {
		return "/community/adminCommunityModify";
	}
}
