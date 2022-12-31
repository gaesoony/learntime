package com.learntime.app.mertoring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("mentor")
@Controller
public class MentorController {

	
	@GetMapping("/review/list")
	public String mentorReview() {
		return "/mentoring/mentorReview";
		
	}
	
	@GetMapping("/list")
	public String mentorList() {
		return "/mentoring/mentorList";
		
	}
	
	@GetMapping("/mentoring/regist")
	public String mentoringRegist() {
		return "/mentoring/mentoringRegist";
		
	}
	
	@GetMapping("/regist")
	public String mentorRegist() {
		return "/mentoring/mentorRegist";
		
	}
	
	@GetMapping("/mymentoring")
	public String myMentoring() {
		return "/mentoring/myMentoring";
		
	}
	
	@GetMapping("/mymentoring/applied")
	public String myMentoringA() {
		return "/mentoring/myMentoringA";
		
	}
	
	
	//임시
	
	@GetMapping("/mymentoring/temp3")
	public String myMentoringT3() {
		return "/member/mypage-mentoring3";
	}
	@GetMapping("/mymentoring/temp2")
	public String myMentoringT2() {
		return "/member/mypage-mentoring2";
	}
	@GetMapping("/mymentoring/temp")
	public String myMentoringT1() {
		return "/member/mypage-mentoring";
	}
	
	
	
}

