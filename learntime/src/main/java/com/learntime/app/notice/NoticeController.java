package com.learntime.app.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	// 공지사항 리스트 화면
		@GetMapping("notice/noticeList")
		public String noticeList() {
			return "notice/noticeList";
			
		}
		
		// 공지사항 리스트 화면(운영자)
		@GetMapping("notice/noticeListAd")
		public String noticeListAd() {
			return "notice/noticeListAd";
			
	}
		// 공지사항 상세조회 화면
		@GetMapping("notice/noticeDetail")
		public String noticeDetail() {
			return "notice/noticeDetail";
			
		}
		
		// 공지사항 글쓰기 화면
		@GetMapping("notice/noticeWrite")
		public String noticeWrite() {
			return "notice/noticeWrite";
			
		}

}
