package com.learntime.app.study.controller;

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
	
	//스터디/프로젝트 목록 조회 (화면 + DB)
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
		System.out.println(popularTechStackList);
		model.addAttribute("popularTechStackList", popularTechStackList);
		
		
		//전체 모임 정보 select
		
		
		
		return "study/list";
	}
	
	//스터디/프로젝트 검색 (ajax)
//	@GetMapping("/getSearchList")
//	@ResponseBody
	

	//스터디/프로젝트 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "study/detail";
	}
	
	//스터디/프로젝트 모집 (화면 + DB select)
	@GetMapping("/recruit")
	public String recruit() {
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
