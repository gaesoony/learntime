package com.learntime.app.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.learntime.app.makegrass.service.MakegrassService;
import com.learntime.app.makegrass.vo.MakegrassVo;
import com.learntime.app.mertoring.service.MentoringService;
import com.learntime.app.mertoring.vo.MentorVo;

@Controller
public class MainControllerSec {
	@Autowired
	private MentoringService mentoringService;
	@Autowired
	private MakegrassService makegrassService;
	//메인 아래부분 화면
	@GetMapping("")
	public String mainSec(Model model,MakegrassVo vo) {
		//멘토링 리스트 select
		List<MentorVo> mentorList = mentoringService.selectMentorList(null);
		model.addAttribute("mentorList", mentorList);
		
		//공부인증 리스트 select
		List<Map<String, Object>> makegrassList = makegrassService.selectList(vo);
		model.addAttribute("makegrassList", makegrassList);
				
		
		return "main/mainSec";
	}

}
