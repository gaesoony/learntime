package com.learntime.app.mertoring;

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
	
}

