package com.learntime.app.admin.q.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/question")
@Controller
public class AdminQuestionController {
	
	//신규문의 리스트
	@GetMapping("qListAd")
	public String qListAd() {
		return "admin/question/qListAd";
	}

	//신규문의 상세조회(운영자)
	@GetMapping("qDetailListAdmin")
	public String qDetailListAdmin() {
		return "admin/question/qDetailListAdmin";
	}

}
