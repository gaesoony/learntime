package com.learntime.app.makegrass.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;

import com.learntime.app.makegrass.service.MakegrassService;
import com.learntime.app.makegrass.vo.MakegrassVo;
import com.learntime.app.member.vo.MemberVo;

@RequestMapping("makegrass")
@Controller
public class MakegrassController {
	
	@Autowired
	private MakegrassService service;
	
	//잔디심기 목록 조회 (화면+DB)
	@GetMapping("/list")
	public String list(Model model, MakegrassVo vo, HttpSession session) {
		
		List<Map<String, Object>> makegrassList = service.selectList(vo);
		model.addAttribute("makegrassList", makegrassList);
		
		List<Map<String, Object>> makegrassLankList = service.selectLankList();
		model.addAttribute("makegrassLankList", makegrassLankList);
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		if(loginMember != null) {
			List<Map<String, Object>> followingList = service.followingList(loginMember.getNo());
			model.addAttribute("loginMember", loginMember);
		}else {
			model.addAttribute("loginMember", null);
		}
		
		return "makegrass/list";
	}
	
	//잔디심기 작성 (화면)
	@GetMapping("/write")
	public String write() {
		return "makegrass/write";
	}
	
	//잔디심기 작성 (DB)
	@PostMapping("/write")
	public String write(MakegrassVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		
		int result = service.write(vo);
		
		System.out.println("컨트롤러에서 작성 DB : " + vo);
		
		if(result >= 1) {
			return "redirect:/makegrass/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//잔디심기 상세 조회 (화면+DB)
	@GetMapping("/detail")
	public String detail(MakegrassVo vo, Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		Map map = new HashMap();
		map.put("ano", vo.getNo());
		if(loginMember != null) {
			map.put("mno", vo.getWriter());
		}
		
		Map<String, Object> makeDetail = service.detail(vo.getNo());
		
		//공부인증 랭킹 리스트
		List<Map<String, Object>> makegrassLankList = service.selectLankList();
		
		model.addAttribute("makegrassLankList", makegrassLankList);
		model.addAttribute("makeDetail", makeDetail);
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("vo", vo);
		
		return "makegrass/detail";
	}
	
	//잔디심기 수정 (화면)
	@GetMapping("/edit")
	public String edit(MakegrassVo vo, String mno, Model model) {
		
		Map<String, Object> makeDetail = service.detail(vo.getNo());
		return "makegrass/edit";
	}
	
	//잔디심기 수정 (DB)
	@PostMapping("/edit")
	public String edit(MakegrassVo vo, HttpSession session) {
		
		vo.setNo(vo.getNo());
		
		int result = service.edit(vo);
		
		System.out.println(result);
		
		if(result == 1) {
			return "redirect:/makegrass/detail?mno=" + vo.getNo();
		}else{
			return "common/errorPage";
		}
	}
	
	//잔디심기 삭제 (DB)
	@GetMapping("/delete")
	public String delete(MakegrassVo vo) {
		
		String no = vo.getNo();
		int result = service.delete(no);
		
		if(result == 1) {
			return "redirect:/makegrass/list";
		}else {
			return "common/errorPage";
		}
	}
	

}
