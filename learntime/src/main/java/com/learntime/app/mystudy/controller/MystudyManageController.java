package com.learntime.app.mystudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("mystudy/manage")
@Controller
public class MystudyManageController {
	
	//게시판 템플릿 관리 스터디정보 수정 화면
	@GetMapping("info")
	public String edit() {
		return "mystudy/manage/info";
	}
	
	//게시판 템플릿 관리 프로필 수정 화면
	@GetMapping("profile")
	public String profile() {
		return "mystudy/manage/profile";
	}
	
	//게시판 템플릿 관리 참여멤버 관리 화면
	@GetMapping("member")
	public String member() {
		return "mystudy/manage/member";
	}
	
	//게시판 템플릿 관리 카테고리 수정 화면
	@GetMapping("category")
	public String category() {
		return "mystudy/manage/category";
	}

}
