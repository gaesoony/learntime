package com.learntime.app.mystudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("mystudy")
@Controller
public class MystudyController {
	
	//내가 가입한 스터디게시판 메인 화면
	@GetMapping("main")
	public String main() {
		return "mystudy/main";
	}
	
	//게시판 템플릿 목록 화면
	@GetMapping("board/list")
	public String list() {
		return "mystudy/board/list";
	}

}
