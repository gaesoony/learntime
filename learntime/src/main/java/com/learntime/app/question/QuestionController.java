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

}