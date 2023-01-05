package com.learntime.app.mertoring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.mertoring.service.MentoringService;
import com.learntime.app.mertoring.vo.MentorVo;

@RequestMapping("mentor")
@Controller
public class MentorController {
	@Autowired
	public MentoringService ms;

	
	@GetMapping("/review/list")
	public String mentorReview() {
		return "/mentoring/mentorReview";
		
	}
	
	@GetMapping("/list")
	public String mentorList() {
		return "/mentoring/mentorList";
		
	}
	
	//멘토링 등록 화면
	@GetMapping("/mentoring/regist")
	public String mentoringRegist() {
		
		//직무카테고리 들고오고..
		
		//암튼.. 카테고리 다들고와..
		
		
		return "/mentoring/mentoringRegist";
	}
	
	//멘토링 등록 서버
	@PostMapping("/mentoring/regist")
	public String mentoringRegist(HttpSession session, MentorVo mv) {
		System.out.println(mv);
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		mv.setWriter(loginMember.getNo());
		
		//멘토링 등록
		int result = ms.registerMentoring(mv);
		
//		//멘토링 스케줄 등록
//		int result2 = ms.registerSchedule(mv);
//		if(!(result * result2 == 1)){
//			return "/common/error";
//		}
		
		if(result != 1){
			return "/common/error";
		}
		
		return "/mentoring/mentorList";
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
	
	// 멘토 등록 찐
	@PostMapping("/mymentoring/temp2")
	public String mentoringRegist(MentorVo vo) {
		System.out.println("받아온vo : " + vo);
		int result = ms.mentorRegister(vo);
		
		if(result != 1) {
 			return "common/error";
		}
		return "redirect:/mentor/mymentoring/temp3";
	}
	
	@GetMapping("/mymentoring/temp")
	public String myMentoringT1() {
		return "/member/mypage-mentoring";
	}
	
	
	
	
	
}

