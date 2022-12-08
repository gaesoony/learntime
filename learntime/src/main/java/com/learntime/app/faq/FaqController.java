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
}
