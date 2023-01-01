package com.learntime.app.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.MemberVo;

@RequestMapping("admin")
@Controller
public class AdminMemberController {
	
	@Autowired
	private MemberService memberService;
	
	//관리자 회원관리 리스트
		@GetMapping("/member/manage")
		public String memberManage(Model model) {
			List<MemberVo> list=memberService.memberList();
			model.addAttribute("list",list);
			
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

}
