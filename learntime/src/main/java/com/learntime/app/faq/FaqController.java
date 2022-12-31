package com.learntime.app.faq;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.learntime.app.faq.service.FaqService;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;
import com.learntime.app.question.vo.QuestionVo;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.GetCreator;

@Controller
@Slf4j
public class FaqController {
	
	@Autowired
	private FaqService fs;
	
	// FAQ 리스트 화면
	@GetMapping("faq/faqList")
	public String faqList(FaqVo vo,Model m,PageVo pv) {
		
		
		int listCount = fs.selectCount();
		int currentPage = (int)pv.getP();
		int boardLimit = 6;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		
		List<FaqVo> list= fs.selectFaqList(vo,pv);
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		
		m.addAttribute("p",pv.getP());
		
		
		return "faq/faqList";
		
	}
	@PostMapping("faq/faqList")
	public String faqList(FaqVo vo) {
		return "faq/faqList";
	}
	// FAQ 리스트 화면(운영자)
	@GetMapping("faq/faqListforAdmin")
	public String faqListforAdmin() {
		return "faq/faqListforAdmin";
		
	}
	//FAQ 상세조회
	@GetMapping("faq/faqDetailList")
	public String faqDetailList(FaqVo vo, HttpSession session, Model m) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
		
		if(loginMember !=null) {
			vo = fs.selectOne(vo);
			m.addAttribute("vo",vo);
			
			return "faq/faqDetailList";
		}else {
			return "common/errorPage";
		}
		
	}
	//FAQ 글쓰기(운영자)
	@GetMapping("faq/faqWrite")
	public String faqWrite() {
		return "faq/faqWrite";
	}
	@PostMapping("faq/faqWrite")
	public String faqWrite(FaqVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
		String writer = loginMember.getNo();
		vo.setWriter(writer);
		int result = fs.faqWrite(vo);
		log.info("vo:"+vo);
		if(result == 1) {
			return "redirect:/faq/faqList?p=1&cateNo=0";
		}else {
			return "common/errorPage";
		}
		
	}
}
