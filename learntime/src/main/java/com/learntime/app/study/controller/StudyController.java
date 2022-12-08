package com.learntime.app.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("study")
@Controller
public class StudyController {
	
	//스터디/프로젝트 목록 조회
	@GetMapping("/list")
	public String list() {
		return "study/list";
	}

	
	//스터디/프로젝트 상세 조회
	@GetMapping("/detail")
	public String detail() {
		return "study/detail";
	}
	
	//스터디/프로젝트 모집하기
	@GetMapping("/recruit")
	public String recruit() {
		return "study/recruit";
	}
}
