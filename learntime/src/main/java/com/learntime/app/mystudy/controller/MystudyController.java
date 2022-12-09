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

	//게시판 템플릿 상세조회 화면
	@GetMapping("board/detail")
	public String detail() {
		return "mystudy/board/detail";
	}
	
	//게시판 템플릿 글작성 화면
	@GetMapping("board/write")
	public String write() {
		return "mystudy/board/write";
	}
}
