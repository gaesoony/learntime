package com.learntime.app.admin.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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
		
		//로그인 접속정보 insert
		//로그인 아이피 set
		loginManager.setLoginYn("Y");
		
		String ip = request.getHeader("X-Forwarded-For");
		 
        if (ip == null) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null) {
            ip = request.getRemoteAddr();
        }
        
        // 현재 날짜/시간
        LocalDateTime now = LocalDateTime.now();
 
        // 포맷팅
        String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        
        loginManager.setAccessTime(formatedNow);
		loginManager.setAccessIp(ip);
		
		int result = service.insertIp(loginManager);
		
		if(result == 1) {
			session.setAttribute("loginManager", loginManager);
			//로그인 성공시 이전 페이지로 감.
			String referer = request.getHeader("Referer");
			request.getSession().setAttribute("redirectURI", referer);
			return "redirect:" + referer;			
		}else {
			return "common/errorPage";
		}
		

	}	
	
//	로그인 (서버)
	@PostMapping("/login")
	public String login(ManagerVo vo,HttpSession session, HttpServletRequest request, Model model) {

		System.out.println(vo);
		ManagerVo loginManager =service.login(vo);
		
		if(loginManager == null) {
			return "common/errorPage";
		}

		//로그인 접속정보 insert
		//로그인 아이피 set
		loginManager.setLoginYn("Y");
		
		String ip = request.getHeader("X-Forwarded-For");
		 
        if (ip == null) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null) {
            ip = request.getRemoteAddr();
        }
        
        // 현재 날짜/시간
        LocalDateTime now = LocalDateTime.now();
 
        // 포맷팅
        String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        
        loginManager.setAccessTime(formatedNow);
		loginManager.setAccessIp(ip);
		
		int result = service.insertIp(loginManager);
		
		if(result == 1) {
			session.setAttribute("loginManager", loginManager);
			System.out.println("로그인매니저셋함!");
			return "redirect:/admin/dashboard";				
		}else {
			return "common/errorPage";
		}
			
	}
	
//	로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request) {
		
		ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager");
		
		loginManager.setLoginYn("N");
		
		String ip = request.getHeader("X-Forwarded-For");
		 
        if (ip == null) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null) {
            ip = request.getRemoteAddr();
        }
        
        loginManager.setAccessIp(ip);
		int result = service.insertIp(loginManager);
		
		if(result == 1) {
			session.invalidate();
			return "redirect:/admin/login";			
		}else {
			return "common/errorPage";
		}
		
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
