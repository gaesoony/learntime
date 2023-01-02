package com.learntime.app.admin.q.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.admin.q.service.AdminQuestionService;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.question.service.QuestionService;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;
import com.learntime.app.question.vo.QuestionVo;

@RequestMapping("admin/question")
@Controller
@Qualifier
public class AdminQuestionController {
	
	@Autowired
	private AdminQuestionService aqs;
	
	//신규문의 리스트
	@GetMapping("qListAd")
	public String qListAd(QuestionVo vo,Model m,PageVo pv) {
		
		int listCount = aqs.selectCount();
		int currentPage = (int)pv.getP();
		int boardLimit = 10;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		
		
		List<QuestionVo> list= aqs.selectQuestionListAd(vo,pv);
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		m.addAttribute("p",pv.getP());

		
		return "admin/question/qListAd";
	}
	//게시물 선택삭제
	@PostMapping("qListAd")
	public String qListAd(HttpServletRequest req,QuestionVo vo) {

		String[] ajaxMsg = req.getParameterValues("valueArr");
		
		int size= ajaxMsg.length;
		int[] newArr = new int[size];
		int no = 0;
		int result = 0;
		for(int i = 0; i<size; i++) {
			newArr[i] = Integer.parseInt(ajaxMsg[i]);
			no = i;
			vo.setNo(no);
		    result = aqs.delete(vo);
		}
		if(result == 1) {
			return "redirect:admin/question/qListAd";
			
		}else {
			return "common/errorPage";
		}
		
		
	}

	//신규문의 상세조회(운영자)
	@GetMapping("qDetailListAdmin")
	public String qDetailListAdmin(QuestionVo vo,HttpSession session, Model m) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
		
		if(loginMember != null && loginMember.getAdminYn().equalsIgnoreCase("Y")) {
			vo = aqs.selectOne(vo);
			m.addAttribute("vo",vo);
			return "question/qListAd";
		}else {
			return "common/errorPage";
		}

		
	}
	
	// 문의게시판 수정페이지
	@GetMapping("question/qDetailListAdminModify")
	public String qDetailListAdminModify() {
		return "admin/question/qDetailListAdminModify";
		
	}
		

}
