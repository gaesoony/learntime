package com.learntime.app.study.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.member.vo.MemberVo;

import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.GroupVo;

@Controller
@RequestMapping("study")
public class StudyController {
	
	@Autowired
	private StudyService service;
	
	//스터디/프로젝트 디폴트 목록 조회 (화면 + DB)
	@GetMapping("/list")
	public String list(Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		//내가 가입한 모임 select (모임번호, 이름, 프사)
		if(loginMember != null) {			
			List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
			model.addAttribute("myGroupList", myGroupList);		
			
		}else {
			model.addAttribute("myGroupList", null);
		}
		
		//인기 태그 select
		List<Map<String, String>> popularTagList = service.selectPopularTagList();
		model.addAttribute("popularTagList", popularTagList);
		
		//인기 기술스택 select
		List<Map<String, String>> popularTechStackList = service.selectPopularTechStackList();
		model.addAttribute("popularTechStackList", popularTechStackList);
		
		//status : 모집중만 보기
		String status = "unrecruited";
		
		//order : 최신순
		String order = "recent";
		
		//type : 스터디+프로젝트
		String type = "all";
		
		Map map = new HashMap<String, String>();
		map.put("status", status);
		map.put("order", order);
		map.put("type", type);
		
		//전체 모임 정보 select (디폴트 : 최신순 + 전체 스터디/프로젝트 + 모집중만 조회)
		List<Map<String, Object>> groupList = service.selectGroupList(map);

		model.addAttribute("groupList", groupList);
		
		return "study/list";
	}
	
	//스터디/프로젝트 검색 목록 조회 (DB)
//	@PostMapping("/list")
//	public String list(Model model, HttpSession session) {
//		
//		//받아야하는 값 : 검색어 + 태그리스트 + 기술스택리스트 + 스터디or프로젝트 + 모집중or모집완료 + 정렬
//		
//		return "";
//	}
	

	//스터디/프로젝트 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "study/detail";
	}
	
	//스터디/프로젝트 모집 (화면 + DB select)
	@GetMapping("/recruit")
	public String recruit(Model model) {
		
		//모집 구분 select
		List<Map<String, String>> groupTypeList = service.selectGroupTypeList();
		model.addAttribute("groupTypeList", groupTypeList);
		
		//진행 기간 select
		List<Map<String, String>> groupPeriodList = service.selectGroupPeriodList();
		model.addAttribute("groupPeriodList", groupPeriodList);
		
		//기술 스택 select
		List<Map<String, String>> techStackList = service.selectTechStackList();
		model.addAttribute("techStackList", techStackList);

		
		System.out.println("그룹타입리스트:"+groupTypeList);
		return "study/recruit";
	}
	
	//스터디/프로젝트 모집 (DB insert)
	@PostMapping("/recruit")
	public String recruit(GroupVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		vo.setWriterNick(loginMember.getNick());
		
		System.out.println(vo);
		
		int result = service.recruit(vo);
		if(result >= 1) {
			return "redirect:/study/list";
		}else {
			return "common/errorPage";
		}

	}
	
	//스터디/프로젝트 수정 (화면)
	@GetMapping("/edit")
	public String edit() {
		return "study/edit";
	}
}
