package com.learntime.app.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	// 문의게시판 리스트 화면
		@GetMapping("notice/noticeList")
		public String noticeList() {
			return "notice/noticeList";
			
		}
		
		// 문의게시판 리스트 화면(운영자)
		@GetMapping("notice/noticeListAd")
		public String noticeListAd() {
			return "notice/noticeListAd";
			
	}
		// 문의게시판 리스트 화면(운영자)
		@GetMapping("notice/noticeDetail")
		public String noticeDetail() {
			return "notice/noticeDetail";
			
		}

}
