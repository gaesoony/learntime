package com.learntime.app.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.qna.service.QnaService;
import com.learntime.app.qna.vo.QnaVo;

@RequestMapping("qna")
@Controller
public class QnaController {
	
	@Autowired
	private QnaService qs;

	//목록 조회 (화면)
	@GetMapping("/list")
	public String list() {
		return "qna/list";
	}
	
	//게시글 상세조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "qna/detail";
	}
	
	//게시글 작성 (화면)
	@GetMapping("/write")
	public String write() {
		return "qna/write";
	}
	
	//게시글 작성 (찐)
	@PostMapping("/write")
	public String write(QnaVo vo) {
		
		int result = qs.write(vo);
		
		if(result == 1) {
			System.out.println(result);
			return "qna/list";
		}else {
			return "common/errorPage";
		}
	}
}
