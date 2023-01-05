package com.learntime.app.qna.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.qna.service.QnaService;
import com.learntime.app.qna.vo.QnaAnswerVo;
import com.learntime.app.qna.vo.QnaTypeVo;
import com.learntime.app.qna.vo.QnaVo;

@RequestMapping("qna")
@Controller
public class QnaController {
	
	@Autowired
	private QnaService service;

	//목록 조회 (화면+DB)
	@GetMapping("/list")
	public String list(Model model, QnaVo vo, QnaTypeVo qvo) {
		
		if(qvo.getType() == null) {
			qvo.setType("전체");
		}
		if(qvo.getOrder() == null) {
			qvo.setOrder("recent");
		}
		if(qvo.getKeyword() == null) {
			qvo.setKeyword("");
		}
		
		List<Map<String, Object>> qnaList = service.selectList(vo, qvo);
		
		model.addAttribute("qnaList", qnaList);
		if(qvo.getKeyword().trim().equals("")) {
			model.addAttribute("keyword", null);
		}else {
			model.addAttribute("keyword", qvo.getKeyword());
		}
		
		model.addAttribute("type", qvo.getType());
		model.addAttribute("order", qvo.getOrder());
		
		return "qna/list";
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
		
		if(result >= 1) {
			return "redirect:/qna/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//게시글 상세조회 (화면+DB)
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(String no, Model model) {
		
		QnaVo qvo = service.detail(no);
		model.addAttribute("qvo", qvo);
		
		return "qna/detail";
	}
	
	//게시글 수정 (화면)
	@GetMapping("/edit")
	public String edit(@RequestParam("qno")String qno, Model model) { 
		
		QnaVo qvo = service.detail(qno);
		model.addAttribute("qvo", qvo);
		
		System.out.println("컨트롤러에서 화면 : " + qvo);
		
		return "qna/edit";
	}
	
	//게시글 수정 (DB)
	@PostMapping("/edit")
	public String edit(QnaVo vo, HttpSession session) {
		
		int result = service.edit(vo);
		
		System.out.println("컨트롤러에서 DB 쪽 : " + result);
		
		if(result == 1) {
			return "redirect:/qna/detail?qno="+vo.getNo();
		}else {
			return "common/errorPage";
		}
	}
	
	//게시글 삭제 (DB)
	@GetMapping("/delete")
	public String delete(QnaVo vo) {
		
		String qno = vo.getNo();
		int result = service.delete(qno);
		
		if(result == 1) {
			return "redirect:/qna/list";
		}else {
			return "common/errorPage";
		}
		
	}

}

