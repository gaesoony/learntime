package com.learntime.app.faq;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.faq.service.AdminFaqService;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.vo.NoticeVo;
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
		int boardLimit = 10;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		int cateNo = vo.getCateNo();
		
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("vo",vo );
		map.put("pv",pv);
		
		List<FaqVo> list= afs.selectFaqList(map);
	
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		m.addAttribute("cateNo",vo.getCateNo());
		m.addAttribute("p",pv.getP());
		m.addAttribute("category",vo.getCategory());
		m.addAttribute("keyword",vo.getKeyword());
		
		
		return "admin/faq/faqListAd";
	}
	@PostMapping("faqListAd")
	@ResponseBody
	public String faqListAd(NoticeVo vo,String deleteList,String del, @RequestParam(value="valueArr[]") List<Integer> valueArr) {
		System.out.println("호출!");
		List<Integer> list = new ArrayList<Integer>();
		for(int i = 0; i<valueArr.size(); i++) {
			list.add(valueArr.get(i));
			
		}
		
		int result = 0;
		
		
		if("삭제".equals(deleteList)) {
			result = afs.deleteOne(list);
			System.out.println(result);
		}else if ("삭제".equals(del)) {
			result = afs.deleteOne(list);
			System.out.println(result);
		}
		
		
		return "admin/faq/faqListAd";
	}
	
	//관리자페이지 faq 상세조회
	@GetMapping("faqDetailListAdmin")
	public String faqDetailListAdmin(FaqVo vo, HttpSession session, Model m) {
		
		ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager"); 
		
		if(loginManager !=null) {
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
