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

}
