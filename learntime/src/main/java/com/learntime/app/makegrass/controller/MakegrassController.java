package com.learntime.app.makegrass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("makegrass")
@Controller
public class MakegrassController {
	
	//잔디심기 목록 조회 (화면)
	@GetMapping("/list")
	public String list() {
		return "/makegrass/list";
	}
	
	//잔디심기 작성 (화면)
	@GetMapping("/write")
	public String write() {
		return "/makegrass/write";
	}
	
	//잔디심기 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "/makegrass/detail";
	}

}
