package com.learntime.app.mystudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("mystudy/board")
@Controller
public class MystudyBoardController {
	
	//게시판 템플릿 목록 화면
	@GetMapping("list")
	public String list() {
		return "mystudy/board/list";
	}

	//게시판 템플릿 상세조회 화면
	@GetMapping("detail")
	public String detail() {
		return "mystudy/board/detail";
	}
	
	//게시판 템플릿 글작성 화면
	@GetMapping("write")
	public String write() {
		return "mystudy/board/write";
	}
	
	//게시판 템플릿 글수정 화면
	@GetMapping("edit")
	public String edit() {
		return "mystudy/board/edit";
	}

}
