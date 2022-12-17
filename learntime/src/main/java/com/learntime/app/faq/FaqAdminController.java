package com.learntime.app.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/faq")
@Controller
public class FaqAdminController {
	
	//관리자페이지 faq 리스트
	@GetMapping("faqListAd")
	public String faqListAd() {
		return "admin/faq/faqListAd";
	}
	
	//관리자페이지 faq 상세조회
	@GetMapping("faqDetailListAdmin")
	public String faqDetailListAdmin() {
		return "admin/faq/faqDetailListAdmin";
	}

	//관리자페이지 faq 수정페이지
	@GetMapping("faqDetailListAdminModify")
	public String faqDetailListAdminModify() {
		return "admin/faq/faqDetailListAdminModify";
	}

}
