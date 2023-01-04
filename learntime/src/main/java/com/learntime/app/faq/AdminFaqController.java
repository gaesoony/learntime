package com.learntime.app.faq;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.faq.service.AdminFaqService;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;

@RequestMapping("admin/faq")
@Controller
public class AdminFaqController {
	
	@Autowired
	private AdminFaqService afs;
	
	//관리자페이지 faq 리스트
	@GetMapping("faqListAd")
	public String faqListAd(FaqVo vo,Model m,PageVo pv) {
		
		int listCount = afs.selectCount();
		int currentPage = (int)pv.getP();
		int boardLimit = 6;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		
		List<FaqVo> list= afs.selectFaqList(vo,pv);
	
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		m.addAttribute("cateNo",vo.getCateNo());
		m.addAttribute("p",pv.getP());
		
		
		return "admin/faq/faqListAd";
	}
	@PostMapping("faqListAd")
	public String faqListAd() {
		return "admin/faq/faqListAd";
	}
	
	//관리자페이지 faq 상세조회
	@GetMapping("faqDetailListAdmin")
	public String faqDetailListAdmin(FaqVo vo, HttpSession session, Model m) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
		
		if(loginMember !=null) {
			vo = afs.selectOne(vo);
			m.addAttribute("vo",vo);
			
			return "admin/faq/faqDetailListAdmin";
		}else {
			return "common/errorPage";
		}
		
		
	}

	//관리자페이지 faq 수정페이지
	@GetMapping("faqDetailListAdminModify")
	public String faqDetailListAdminModify() {
		return "admin/faq/faqDetailListAdminModify";
	}

}
