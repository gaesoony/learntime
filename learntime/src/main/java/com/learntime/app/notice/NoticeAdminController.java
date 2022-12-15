package com.learntime.app.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin/notice")
@Controller
public class NoticeAdminController {
	
	// 공지사항 리스트 화면
		@GetMapping("noticeListAdmin")
		public String noticeListAdmin() {
			return "admin/notice/noticeListAdmin";
			
		}
		
		// 공지사항 상세조회 화면
		@GetMapping("noticeDetailAdmin")
		public String noticeDetailAdmin() {
			return "admin/notice/noticeDetailAdmin";
			
		}
		
		

}
