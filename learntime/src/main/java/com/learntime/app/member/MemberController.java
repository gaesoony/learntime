package com.learntime.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("member")
@Controller
public class MemberController {
//	회원가입 (화면)
	@GetMapping("/join")
	public String join() {
		return "/member/join";
	}
	
//	회원가입 승인메일 발송 (화면)
	@GetMapping("/join/certification")
	public String certification() {
		return "/member/joinCertification";
	}
	
//  아이디 찾기(화면)
	@GetMapping("/findId")
	public String findId() {
		return "/member/findId";
	}
	
//  아이디 찾기 결과(화면)
	@GetMapping("/resultId")
	public String resultId() {
		return "/member/resultId";
	}
	
	
//  비밀번호 찾기(화면)
	@GetMapping("/findPwd")
	public String findPwd() {
		return "/member/findPwd";
	}
	
//  비밀번호 찾기 결과(화면)
	@GetMapping("/resultPwd")
	public String resultPwd() {
		return "/member/resultPwd";
	}
	
	
	
}
