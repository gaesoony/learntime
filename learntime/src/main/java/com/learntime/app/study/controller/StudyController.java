package com.learntime.app.study.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.GroupVo;

@Controller
@RequestMapping("study")
public class StudyController {
	
	@Autowired
	private StudyService studyService;
	
	//스터디/프로젝트 목록 조회 (화면)
	@GetMapping("/list")
	public String list() {
		return "study/list";
	}

	//스터디/프로젝트 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "study/detail";
	}
	
	//스터디/프로젝트 모집 (화면)
	@GetMapping("/recruit")
	public String recruit() {
		return "study/recruit";
	}
	
	//스터디/프로젝트 모집 (DB)
	@PostMapping("/recruit")
	public String recruit(GroupVo vo) {
		return "";
	}
	
	//스터디/프로젝트 수정 (화면)
	@GetMapping("/edit")
	public String edit() {
		return "study/edit";
	}
}
