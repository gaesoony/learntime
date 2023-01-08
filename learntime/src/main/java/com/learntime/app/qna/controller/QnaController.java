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
	public String list(Model model, QnaTypeVo qvo, HttpSession session) {
		
		if(qvo.getType() == null) {
			qvo.setType("전체");
		}
		if(qvo.getOrder() == null) {
			qvo.setOrder("recent");
		}
		if(qvo.getKeyword() == null) {
			qvo.setKeyword("");
		}
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		
		List<Map<String, Object>> qnaList = service.selectList(qvo);
		
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
		
		System.out.println("컨트롤러에서 작성 DB : " + result);
		
		if(result >= 1) {
			return "redirect:/qna/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//게시글 상세조회 (화면+DB)
	@GetMapping("/detail")
	public String detail(QnaTypeVo qvo, Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		Map map = new HashMap();
		map.put("qno", qvo.getQno());
		if(loginMember != null) {
			map.put("mno", qvo.getMno());
		}
		
		Map<String, Object> qnaDetail = service.detail(qvo.getQno());
		
		List<Map<String, Object>> answerList = service.answerList(map);
		
		model.addAttribute("qvo", qvo);
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("qnaDetail", qnaDetail);
		model.addAttribute("answerList", answerList);
		
		return "qna/detail";
	}
	
	//게시글 수정 (화면)
	@GetMapping("/edit")
	public String edit(QnaTypeVo qvo, Model model) { 
		
		Map<String, Object> qnaDetail = service.detail(qvo.getQno());
		model.addAttribute("qnaDetail", qnaDetail);
		
		return "qna/edit";
	}
	
	//게시글 수정 (DB)
	@PostMapping("/edit")
	public String edit(QnaVo vo, QnaTypeVo qvo, HttpSession session) {
		
		vo.setNo(qvo.getQno());
		int result = service.edit(vo);
		
		System.out.println("컨트롤러에서 수정 DB : " + result);
		
		if(result == 1) {
			return "redirect:/qna/detail?qno="+qvo.getQno() + "&keyword=" + qvo.getKeyword() + "&type=" + qvo.getType() + "&order=" + qvo.getOrder();
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
	
	//댓글 작성 (DB)
	@PostMapping("/detail/writeAnswer")
	public String writeAnswer(QnaTypeVo qvo, String answer) {
		Map map = new HashMap();
		map.put("qno", qvo.getQno());
		map.put("mno", qvo.getMno());
		map.put("answer", answer);
		
		int result = service.writeAnswer(map);
		
		System.out.println("컨트롤러에서 댓글 작성 : " + result);
		
		if(result == 1) {
			return "redirect:/qna/detail?qno=" + qvo.getQno() + "&keyword=" + qvo.getKeyword() + "&type=" + qvo.getType() + "&order=" + qvo.getOrder();
		}else {
			return "common/errorPage";
		}
	}
	
	//상세조회 내 답변 채택 (DB)
	@GetMapping("/select")
	public String select(QnaTypeVo qvo, QnaAnswerVo avo) {
		
		String qno = qvo.getQno();
		String cno = avo.getNo();
		int result = service.select(cno);
		
		if(result == 1) {
			return "redirect:/qna/detail?qno=" + qvo.getQno() + "&keyword=" + qvo.getKeyword() + "&type=" + qvo.getType() + "&order=" + qvo.getOrder();
		}else {
			return "common/errorPage";
		}
	}

}

