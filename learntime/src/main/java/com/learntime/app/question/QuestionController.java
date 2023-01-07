package com.learntime.app.question;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.service.QuestionService;

import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;
import com.learntime.app.question.vo.QuestionVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class QuestionController {
	@Autowired
	private QuestionService qs;
	
	// 문의게시판 리스트 화면
	@PostMapping("question/questionList")
	public String questionList() {

		return "question/questionList";
		
	}
	// 문의게시판 리스트 
	@GetMapping ("question/questionList")
	public String questionList(QuestionVo vo,Model m,PageVo pv,HttpSession session) {


		int listCount = qs.selectCount();
		int currentPage = (int)pv.getP();
		int boardLimit = 10;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		int cateNo = vo.getCateNo();
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("vo",vo);
		map.put("pv",pv);
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
		List<QuestionVo> list= null;
		if(loginMember != null) {
			list= qs.selectQuestionList(map);
		}
		
		System.out.println("컨트롤러에서 리스트 출력 ~~~");
		System.out.println(list);
		
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		m.addAttribute("cateNo",vo.getCateNo());
		m.addAttribute("p",pv.getP());
		m.addAttribute("category",vo.getCategory());
		m.addAttribute("keyword",vo.getKeyword());
		
		return "question/questionList";
		
		
	}
	
	
	// 문의게시판 글쓰기 (화면)
	@GetMapping("question/questionWrite")
	public String questionWrite() {
		return "question/questionWrite";
		
	}
	
	//문의게시판 글쓰기
	@PostMapping("question/questionWrite")
	public String questionWrite(QuestionVo vo,HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");  
		String writer = loginMember.getNo();
		vo.setWriter(writer);
		
		System.out.println(writer);
		int result = qs.questionWrite(vo);
		log.debug("vo:"+vo);
		if(result == 1) {
			return "question/questionList";
		}else {
			return "common/errorPage";
		}
		
	}
	
	// 문의게시판 상세조회(회원)
	@GetMapping("question/qDetailList")
	public String qDetailList(QuestionVo vo,HttpSession session, Model m) {
		
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
			
			if(loginMember !=null) {
				vo = qs.selectOne(vo);
				m.addAttribute("vo",vo);
				return "question/qDetailList";
			}else {
				return "common/errorPage";
			}
	
			
		}
	
	// 문의게시판 상세조회(운영자)
	@GetMapping("question/qDetailListAd")
	public String qDetailListAd() {
		return "question/qDetailListAd";
			
		}
	
//	// 문의게시판 수정페이지(회원)
//	@GetMapping("question/qDetailListModify")
//	public String qDetailListModify(QuestionVo vo,HttpSession session, Model m) {
//		
//		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
//		
//		
//		int result = 0;
//		if(loginMember !=null) {
//			result = qs.updateOne(vo);
//			m.addAttribute("vo",vo);
//			
//		}
//		if(result == 1) {
//			return "question/qDetailList";
//		}else {
//			return "common/errorPage";
//		}
//		
//		
//			
//	}


}
