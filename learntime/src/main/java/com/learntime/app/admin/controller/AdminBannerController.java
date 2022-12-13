package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/banner")
@Controller
public class AdminBannerController {
	
	//관리자페이지 배너 조회 (화면)
	@GetMapping("list")
	public String list() {
		return "admin/banner/list";
	}
	
	//관리자페이지 배너 작성 (화면)
	@GetMapping("write")
	public String write() {
		return "admin/banner/write";
	}
	
	//관리자페이지 배너 수정 (화면)
	@GetMapping("edit")
	public String edit() {
		return "admin/banner/edit";
	}

}
