package com.learntime.app.mystudy.controller;

import java.util.HashMap;
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

@RequestMapping("mystudy")
@Controller
public class MystudyMainController {
	
	@Autowired
	private StudyService service;
	
	//내가 가입한 스터디게시판 메인 화면
	@GetMapping("main")
	public String main(HttpSession session, Model model, String gno) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);		
		
		model.addAttribute("groupOne", groupOne);
		
		return "mystudy/main";
	}

}
