package com.learntime.app.makegrass.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.makegrass.service.MakegrassService;
import com.learntime.app.makegrass.vo.MakegrassVo;
import com.learntime.app.member.vo.MemberVo;

@RequestMapping("makegrass")
@Controller
public class MakegrassController {
	
	@Autowired
	private MakegrassService service;
	
	//잔디심기 목록 조회 (화면)
	@GetMapping("/list")
	public String list() {
		return "makegrass/list";
	}
	
	//잔디심기 작성 (화면)
	@GetMapping("/write")
	public String write() {
		return "makegrass/write";
	}
	
	//잔디심기 작성 (찐)
	@PostMapping("/write")
	public String write(MakegrassVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		
		int result = service.write(vo);
		
		if(result >= 1) {
			return "makegrass/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//잔디심기 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail() {
		return "makegrass/detail";
	}

}
