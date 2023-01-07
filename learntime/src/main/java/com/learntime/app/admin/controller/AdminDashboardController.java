package com.learntime.app.admin.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.admin.service.ManagerService;
import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.common.file.FileUploader;
import com.learntime.app.mystudy.vo.ProfileVo;

@RequestMapping("admin/dashboard")
@Controller
public class AdminDashboardController {
	
	@Autowired
	@Qualifier("managerServiceImpl")
	private ManagerService managerService;
	
	//관리자페이지 대시보드 조회 (화면)
	@GetMapping("")
	public String dashboard() {
		return "admin/dashboard/list";
	}
	
	//관리자페이지 대시보드 - 관리자 리스트 조회 (화면)
	@GetMapping("manager/list")
	public String managerList() {
		return "admin/dashboard/manager/list";
	}
	
	//관리자페이지 대시보드 - 관리자 로그 조회 (화면)
	@GetMapping("manager/log")
	public String managerLog() {
		return "admin/dashboard/manager/log";
	}
	
	//관리자페이지 대시보드 - 관리자 프로필 수정 (화면)
	@GetMapping("manager/profile")
	public String managerProfile() {
		return "admin/dashboard/manager/profile";
	}
	
	//관리자페이지 대시보드 - 관리자 프로필 수정 (DB)
	@PostMapping("manager/profile")
	public String managerProfile(ProfileVo vo, HttpServletRequest req, HttpSession session) {
		
		ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager");
		
		String changeName = "";
		
		//파일 저장
		if(!vo.isEmpty()) {
			changeName = FileUploader.uploadManagerProfile(req, vo);
		}
		
		vo.setChangeName(changeName);
		vo.setNo(loginManager.getNo());

		
		//프사, 이름 업데이트
		int result = managerService.updateProfile(vo);
		
		if(result == 0) {
			return "common/errorPage";			
		}
	
		session.setAttribute("alertMsg", "프로필 수정 성공!");
		return "redirect:/admin/dashboard";

	}

}
