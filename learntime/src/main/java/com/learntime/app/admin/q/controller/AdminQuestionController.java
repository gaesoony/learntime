package com.learntime.app.admin.q.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.learntime.app.admin.q.service.AdminQuestionService;
import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.vo.NoticeVo;
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
		
		int cateNo = vo.getCateNo();
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("vo",vo );
		map.put("pv",pv);
		
		
		List<QuestionVo> list= aqs.selectQuestionListAd(map);
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		m.addAttribute("cateNo",vo.getCateNo());
		m.addAttribute("p",pv.getP());
		m.addAttribute("category",vo.getCategory());
		m.addAttribute("keyword",vo.getKeyword());
		
		return "admin/question/qListAd";
	}
	//게시물 선택삭제
	@PostMapping("qListAd")
	public String qListAd(HttpServletRequest req,QuestionVo vo,String deleteList,@RequestParam(value="valueArr[]") List<Integer> valueArr) {

		

		
		List<Integer> list = new ArrayList<Integer>();
		for(int i = 0; i<valueArr.size(); i++) {
			list.add(valueArr.get(i));
			
		}
		
	
		int result = 0;
		if ("삭제".equals(deleteList)) {
			System.out.println(list);
			result = aqs.deleteOne(list);
			
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
		
		ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager"); 
		
		System.out.println("호출");
		
		if(loginManager != null ) {
			System.out.println("if통과");
			vo = aqs.selectOne(vo);
			m.addAttribute("vo",vo);
			
			return "admin/question/qDetailListAdmin";
		}else {
			System.out.println("else들어옴");
			return "common/errorPage";
		}

		
	}
	
	// 문의게시판 수정페이지
	@GetMapping("question/qDetailListAdminModify")
	public String qDetailListAdminModify() {
		return "admin/question/qDetailListAdminModify";
		
	}
		

}
