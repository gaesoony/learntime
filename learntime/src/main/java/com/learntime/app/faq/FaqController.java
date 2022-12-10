package com.learntime.app.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import oracle.jdbc.proxy.annotation.GetCreator;

@Controller
public class FaqController {
	
	// FAQ 리스트 화면
	@GetMapping("faq/faqList")
	public String faqList() {
		return "faq/faqList";
		
	}
	// FAQ 리스트 화면(운영자)
	@GetMapping("faq/faqListforAdmin")
	public String faqListforAdmin() {
		return "faq/faqListforAdmin";
		
	}
	//FAQ 상세조회
	@GetMapping("faq/faqDetailList")
	public String faqDetailList() {
		return "faq/faqDetailList";
	}
	//FAQ 글쓰기(운영자)
		@GetMapping("faq/faqWrite")
		public String faqWrite() {
			return "faq/faqWrite";
		}
}
