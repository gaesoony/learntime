package com.learntime.app.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.admin.service.ManagerService;
import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("admin/manager")
@Slf4j
public class AdminManagerController {
	
	@Autowired
	@Qualifier("managerServiceImpl")
	private ManagerService service;
	
//	잘못된 경로-로그인(화면)
	@GetMapping("/wrong")
	public String wrongPathLogin() {
		return "admin/admin-login";
	}
	
//	잘못된 경로-로그인(서)
	@PostMapping("/wrong")
	public String wrongPathLogin(ManagerVo vo,HttpSession session, HttpServletRequest request) {
		ManagerVo loginManager = service.login(vo);
		if(loginManager == null) {
			return"common/errorPage";
		}
		session.setAttribute("loginManager", loginManager);
		//로그인 성공시 이전 페이지로 감.
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "redirect:" + referer;
	}	
	
//	로그인 (서버)
	@PostMapping("/login")
	public String login(ManagerVo vo,HttpSession session, HttpServletRequest request,Model model) {

		ManagerVo loginManager =service.login(vo);
		if(loginManager==null) {
			return "common/errorPage";
		}
		
		return "redirect:/admin/dashboard";
		
//		session.setAttribute("loginManager", loginManager);
//		//로그인 성공시 이전 페이지로 감.
//		String referer = request.getHeader("Referer");
//		request.getSession().setAttribute("redirectURI", referer);
//		return "redirect:" + referer;
	}
	
//	로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login";
	}

	
//	회원가입 (서버)
	@PostMapping("/join")
	public String join(ManagerVo vo, HttpSession session) throws Exception {
		
		int result = service.join(vo);

		if(result==1) {
			session.setAttribute("alertMsg", "관리자가 생성되었습니다");
			return "redirect:/admin/dashboard/manager/list";
		}else {
			return"common/errorPage";
		}

	}
	
//	닉네임 중복검사 (AJAX)
	@ResponseBody
	@GetMapping("/nickCheck")
	public int nickCheck(@RequestParam("nick") String nick, ManagerVo vo, HttpSession session){
		ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager");
		
		vo.setNick(nick);
		
		if(loginManager!=null) {
			vo.setNo(loginManager.getNo());
		}
		return service.nickCheck(vo);
	}
	
//	이메일 중복검사 (AJAX)
	@ResponseBody
	@GetMapping("/emailCheck")
	public int emailCheck(@RequestParam("id")String id, ManagerVo vo,HttpSession session){
		ManagerVo loginManager=(ManagerVo)session.getAttribute("loginManager");
		vo.setId(id);
		if(loginManager!=null) {
			vo.setNo(loginManager.getNo());
		}
		return service.emailCheck(vo);
	}

}
