package com.learntime.app.admin.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

@RequestMapping("admin/study")
@Controller
public class AdminStudyController {
	
	@Autowired
	private StudyService service;
	
	//관리자페이지 - 스터디/프로젝트 목록 (화면)
	@GetMapping("list")
	public String list(Model model, String keyword, String category, String status, String pno) {
		
		Map map = new HashMap();
		
		map.put("keyword", keyword);
		map.put("category", category);
		map.put("status", status);
       
       int listCount = service.selectAdminGroupCnt(map);
       int currentPage = Integer.parseInt(pno);
       int pageLimit = 10;
       int boardLimit = 10;
       
       PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
       map.put("pv", pv);
       
       List<Map<String, Object>> groupList = service.selectAdminGroupList(map);
       model.addAttribute("groupList", groupList);
       model.addAttribute("listCount", listCount);
       model.addAttribute("pv", pv);
       model.addAttribute("pno", pno);
       model.addAttribute("keyword", keyword);
       model.addAttribute("category", category);
       model.addAttribute("status", status);
       
		
		return "admin/study/list";
	}
	
	@PostMapping("list/delete")
	public String deleteGroup(String[] group, String pno, String keyword, String category, String status, HttpSession session) throws UnsupportedEncodingException {
		
		String encodedKeyword = URLEncoder.encode(keyword, "UTF-8");
		
		int result = service.deleteGroupList(group);
		
		if(result == 1) {
			session.setAttribute("alertMsg", "삭제되었습니다");
			return "redirect:/admin/study/list?pno="+pno+"&keyword="+encodedKeyword+"&category="+category+"&status="+status;
		}else {
			return "common/errorPage";
		}
	}
	
	//관리자페이지 - 스터디/프로젝트 상세 (화면)
	@GetMapping("detail")
	public String detail(String gno, String pno, String keyword, String category, String status, Model model) {
		System.out.println("gno?:"+gno);
		//뒤로가기 때문에 SearchVo 받아와야함
		
		//map에 gno, mno 넣음
		Map map = new HashMap();
		map.put("gno", gno);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		System.out.println(groupOne);
		//댓글 정보 select
		List<Map<String, Object>> groupCmtList = service.selectGroupCmtList(map);

		model.addAttribute("pno", pno);
        model.addAttribute("keyword", keyword);
        model.addAttribute("category", category);
        model.addAttribute("status", status);
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("groupCmtList", groupCmtList);
		
		return "admin/study/detail";
	}
	
	//관리자페이지 - 스터디/프로젝트 수정 (화면)
	@GetMapping("edit")
	public String edit(String gno, String pno, String keyword, String category, String status, Model model) {
		
		//모집 구분 select
		List<Map<String, String>> groupTypeList = service.selectGroupTypeList();
		model.addAttribute("groupTypeList", groupTypeList);
		
		//진행 기간 select
		List<Map<String, String>> groupPeriodList = service.selectGroupPeriodList();
		model.addAttribute("groupPeriodList", groupPeriodList);
		
		//기술 스택 select
		List<Map<String, String>> techStackList = service.selectTechStackList();
		model.addAttribute("techStackList", techStackList);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		
		model.addAttribute("gno", gno);
		model.addAttribute("pno", pno);
        model.addAttribute("keyword", keyword);
        model.addAttribute("category", category);
        model.addAttribute("status", status);
		
		return "admin/study/edit";
	}
	
	//스터디/프로젝트 수정 (DB)
	@PostMapping("edit")
	public String edit(String gno, String pno, String keyword, String category, String status, Model model, GroupVo vo, HttpSession session) throws UnsupportedEncodingException {
		System.out.println("들어옴??");
		
		String encodedKeyword = URLEncoder.encode(keyword, "UTF-8");
		vo.setNo(gno);
		
		int result = service.updateGroupInfo(vo);
		if(result >= 1) {
			session.setAttribute("alertMsg", "글 수정 완료!");
			return "redirect:/admin/study/detail?gno="+gno+"&pno="+pno+"&keyword="+encodedKeyword+"&category="+category+"&status="+status;
		}else {
			return "common/errorPage";
		}
		
	}
	
	//관리자페이지 - 스터디/프로젝트 환경설정 (화면)
	@GetMapping("setting")
	public String setting() {
		return "admin/study/setting";
	}

}
