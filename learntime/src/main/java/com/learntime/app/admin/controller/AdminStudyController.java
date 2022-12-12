package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/study")
@Controller
public class AdminStudyController {
	
	//관리자페이지 - 스터디/프로젝트 목록 (화면)
	@GetMapping("list")
	public String list() {
		return "admin/study/list";
	}
	
	//관리자페이지 - 스터디/프로젝트 상세 (화면)
	@GetMapping("detail")
	public String detail() {
		return "admin/study/detail";
	}
	
	//관리자페이지 - 스터디/프로젝트 수정 (화면)
	@GetMapping("edit")
	public String edit() {
		return "admin/study/edit";
	}
	
	//관리자페이지 - 스터디/프로젝트 환경설정 (화면)
	@GetMapping("setting")
	public String setting() {
		return "admin/study/setting";
	}

}
