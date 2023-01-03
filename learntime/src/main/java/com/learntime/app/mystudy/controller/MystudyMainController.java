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
		
		Map map = new HashMap();
		map.put("mno", loginMember.getNo());
		map.put("gno", gno);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);	
		
		//map으로 그룹에 대해서 status가 뭔지 select
		String myStatus = service.selectMyStatus(map);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		System.out.println(cateList);
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("myStatus", myStatus);
		model.addAttribute("cateList", cateList);
		
		return "mystudy/main";
	}

}
