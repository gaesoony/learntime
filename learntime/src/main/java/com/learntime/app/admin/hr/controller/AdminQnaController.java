package com.learntime.app.admin.hr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminQnaController {

	//관리자 페이지 - qna 리스트
	@GetMapping("/qna/list")
	public String adminQna() {
		return "/admin/qna/list";
	}
	
	//관리자 페이지 - 잔디심기 리스트
	@GetMapping("/makegrass/list")
	public String adminMakegrass() {
		return "/admin/makegrass/list";
	}
	
	//관리자 페이지 - qna 디테일
	@GetMapping("/qna/detail")
	public String adminQnaDetail() {
		return "/admin/qna/detail";
	}
	
	//관리자 페이지 - 잔디심기 디테일
	@GetMapping("/makegrass/detail")
	public String adminMakegrassDetail() {
		return "/admin/makegrass/detail";
	}
}
