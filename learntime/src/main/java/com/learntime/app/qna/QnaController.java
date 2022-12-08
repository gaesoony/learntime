package com.learntime.app.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("qna")
@Controller
public class QnaController {

	//목록 조회 (화면)
	@GetMapping("/list")
	public String list() {
		return "/qna/list";
	}
	
	//게시글 상세조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "/qna/detail";
	}
}
