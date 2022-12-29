package com.learntime.app.admin.dk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminLoginController {
	//관리자 로그인
	@GetMapping("/login")
	public String adminLogin() {
		return "/admin/admin-login";
	}
	//관리자 회원관리 리스트
	@GetMapping("/member/manage")
	public String memberManage() {
		return "/admin/member/memberManage";
	}
	//관리자 회원관리 정보수정
	@GetMapping("/member/manage/detail")
	public String memberDetail() {
		return "/admin/member/memberDetail";
	}
	//관리자 회원관리 운영자 생성
	@GetMapping("/member/createOperator")
	public String createOperator() {
		return "/admin/member/createOperator";
	}
	//관리자 회원등급관리,토큰 조건 관리
	@GetMapping("/member/grade")
	public String memberGrade() {
		return "/admin/member/memberGrade";
	}
	//관리자 스킨샵 리스트
	@GetMapping("/skinshop/list")
	public String skinList() {
		return "/admin/skinshop/list";
	}
	//관리자 스킨샵 상세조회(수정)
	@GetMapping("/skinshop/edit")
	public String skinEdit() {
		return "/admin/skinshop/edit";
	}
	
	//관리자 스킨샵 작성하기
	@GetMapping("/skinshop/write")
	public String skinWrite() {
		return "/admin/skinshop/write";
	}
	
	
	
}
