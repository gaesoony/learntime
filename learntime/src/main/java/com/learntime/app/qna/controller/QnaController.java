package com.learntime.app.qna.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.qna.service.QnaService;
import com.learntime.app.qna.vo.QnaVo;

@RequestMapping("qna")
@Controller
public class QnaController {
	
	@Autowired
	private QnaService service;

	//목록 조회 (화면)
	@GetMapping("/list")
	public String list() {
		return "qna/list";
	}
	
	//게시글 목록 조회 (DB)
	@PostMapping("/list")
	public String list(Model model, String writer) {
		
		List<QnaVo> voList = service.selectList(writer);
		model.addAttribute("voList", voList);
		return "/qna/list";

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
	
	//게시글 작성 (DB)
	@PostMapping("/write")
	public String write(QnaVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		
		int result = service.write(vo);
		
		System.out.println("컨트롤러에서 : " + result);
		
		if(result >= 1) {
			return "redirect:/qna/list";
		}else {
			return "common/errorPage";
		}
	}
}
