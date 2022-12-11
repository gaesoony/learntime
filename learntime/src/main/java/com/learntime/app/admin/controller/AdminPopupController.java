package com.learntime.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/popup")
@Controller
public class AdminPopupController {
	
	//관리자페이지 팝업 조회
	@GetMapping("list")
	public String list() {
		return "admin/popup/list";
	}
	
	//관리자페이지 팝업 작성
	@GetMapping("write")
	public String write() {
		return "admin/popup/write";
	}
	
	//관리자페이지 팝업 수정
	@GetMapping("edit")
	public String edit() {
		return "admin/popup/edit";
	}

}
