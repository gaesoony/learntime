package com.learntime.app.question;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.learntime.app.question.service.QuestionService;
import com.learntime.app.question.vo.QuestionVo;

@Controller
public class QuestionController {
	
	private QuestionService qs;
	
	// 문의게시판 리스트 화면
	@GetMapping("question/questionList")
	public String questionList() {
		return "question/questionList";
		
	}
	
	// 문의게시판 글쓰기 (화면)
	@GetMapping("question/questionWrite")
	public String questionWrite() {
		return "question/questionWrite";
		
	}
	
	//문의게시판 글쓰기
	@PostMapping("question/questionWrite")
	public String questionWrite(QuestionVo vo) {
		int result = qs.questionWrite(vo);
		if(result == 1) {
			return "question/questionList";
		}else {
			return "common/errorPage";
		}
		
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
	
	// 문의게시판 수정페이지(회원)
	@GetMapping("question/qDetailListModify")
	public String qDetailListModify() {
		return "question/qDetailListModify";
			
		}


}
