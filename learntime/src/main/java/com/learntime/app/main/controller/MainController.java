package com.learntime.app.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.main.service.MainService;
import com.learntime.app.main.vo.MainVo;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired
	private MainService service;
	
	//런타임 메인페이지 조회 (화면 + DB select)
	@GetMapping("")
	public String learnTimeMain(Model model) {
		
		//배너
		
		//팝업
		
		//스터디 리스트 select
//		List<Map<String, String>> groupList = service.selectGroupList();
//		model.addAttribute("groupList", groupList);
		
		//지식인
		
		//멘토링
		
		//잔디심기
		
		//공지사항
		
//		MainVo vo = service.selectMain();
		
//		model.addAttribute("mainVo", vo);
		
		return "main/main";
	}

}
