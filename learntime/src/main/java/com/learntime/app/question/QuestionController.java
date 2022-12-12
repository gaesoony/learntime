package com.learntime.app.question;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QuestionController {
	
	// 문의게시판 리스트 화면
	@GetMapping("question/questionList")
	public String questionList() {
		return "question/questionList";
		
	}
	
	// 문의게시판 글쓰기 
	@GetMapping("question/questionWrite")
	public String questionWrite() {
		return "question/questionWrite";
		
	}
	
	// 문의게시판 상세조회(회원)
	@GetMapping("question/qDetailList")
	public String qDetailList() {
		return "question/qDetailList";
			
		}
	
	// 문의게시판 상세조회(운영자)
	@GetMapping("question/qDetailListAd")
	public String qDetailListAd() {
		return "question/qDetailListAd";
			
		}

}
