package com.learntime.app.mystudy.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.study.service.StudyService;

@RequestMapping("mystudy/manage")
@Controller
public class MystudyManageController {
	
	@Autowired
	private StudyService service;
	
	//게시판 템플릿 관리 스터디정보 수정 화면
	@GetMapping("info")
	public String edit(Model model, HttpSession session, String gno) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
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
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);		

		return "mystudy/manage/info";
	}
	
	//게시판 템플릿 관리 프로필 수정 화면
	@GetMapping("profile")
	public String profile() {
		return "mystudy/manage/profile";
	}
	
	//게시판 템플릿 관리 참여멤버 관리 화면
	@GetMapping("member")
	public String member() {
		return "mystudy/manage/member";
	}
	
	//게시판 템플릿 관리 카테고리 수정 화면
	@GetMapping("category")
	public String category() {
		return "mystudy/manage/category";
	}

}
