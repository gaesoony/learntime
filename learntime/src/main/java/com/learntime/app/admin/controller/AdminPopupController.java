package com.learntime.app.admin.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.admin.service.PopupService;
import com.learntime.app.admin.vo.PopupVo;
import com.learntime.app.common.file.FileUploader;

@RequestMapping("admin/popup")
@Controller
public class AdminPopupController {
	
	@Autowired
	private PopupService service;
	
	//관리자페이지 팝업 조회 (화면)
	@GetMapping("list")
	public String list(Model model) {
		
		//디비에서 팝업 리스트 조회
		List<Map<String, Object>> popupList = service.selectPopupList();
		model.addAttribute("popupList", popupList);
		
		return "admin/popup/list";
	}
	
	//관리자페이지 팝업 작성 (화면)
	@GetMapping("write")
	public String write() {
		
		return "admin/popup/write";
		
	}
	
	//관리자페이지 팝업 작성 (DB)
	@PostMapping("write")
	public String write(Model model, PopupVo vo, HttpServletRequest req, HttpSession session) {
		
		System.out.println(vo);
		String startDate = vo.getStartDate();
		String startDate1 = startDate.substring(0, 10);
		String startDate2 = startDate.substring(11);
		startDate = startDate1 + " " + startDate2;
		vo.setStartDate(startDate);
		
		String endDate = vo.getEndDate();
		String endDate1 = endDate.substring(0, 10);
		String endDate2 = endDate.substring(11);
		endDate = endDate1 + " " + endDate2;
		vo.setEndDate(endDate);
		
		String changeName = "";
		
		//파일 저장
		if(!vo.isEmpty()) {
			changeName = FileUploader.uploadPopup(req, vo);
		}
		
		vo.setChangeName(changeName);
		
		//팝업 insert
		int result = service.insertPopup(vo);
		if(result == 1) {
			session.setAttribute("alertMsg", "팝업 추가 완료");
			return "redirect:/admin/popup/list";
			
		}else {
			return "common/errorPage";
		}

	}
	
	//관리자페이지 팝업 수정 (화면)
	@GetMapping("edit")
	public String edit(String no, Model model) {
		
		//디비에서 팝업 하나 조회
		Map<String, Object> popupOne = service.selectPopupOne(no);
		model.addAttribute("popupOne", popupOne);
		
		return "admin/popup/edit";
	}
	
	//관리자페이지 팝업 수정 (DB)
	@PostMapping("edit")
	public String edit(String no, HttpSession session, PopupVo vo, HttpServletRequest req) {
		System.out.println("들어옴?");
		System.out.println("들어온"+vo);
		
		String startDate = vo.getStartDate();
		String startDate1 = startDate.substring(0, 10);
		String startDate2 = startDate.substring(11);
		startDate = startDate1 + " " + startDate2;
		vo.setStartDate(startDate);
		
		String endDate = vo.getEndDate();
		String endDate1 = endDate.substring(0, 10);
		String endDate2 = endDate.substring(11);
		endDate = endDate1 + " " + endDate2;
		vo.setEndDate(endDate);
		
		String changeName = "";
		
		//파일 저장
		if(!vo.isEmpty()) {
			changeName = FileUploader.uploadPopup(req, vo);
		}
		
		vo.setChangeName(changeName);
		System.out.println("처리완료된"+vo);
		int result = service.editPopup(vo);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 수정 완료");
			return "redirect:/admin/popup/list";
		}else {
			return "common/errorPage";
		}
		
	
	}
	
	//관리자페이지 팝업 비활성화
	@GetMapping("disable")
	public String disable(String no, HttpSession session) {
		
		int result = service.disablePopup(no);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 비활성화 완료");
			return "redirect:/admin/popup/list";
		}else {
			return "common/errorPage";
		}
		
	}
	
	//관리자페이지 팝업 활성화
	@GetMapping("enable")
	public String enable(String no, HttpSession session) {
		
		int result = service.enablePopup(no);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 활성화 완료");
			return "redirect:/admin/popup/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//관리자페이지 팝업 영구삭제 
	@GetMapping("delete")
	public String delete(String no, HttpSession session) {
		
		int result = service.deletePopup(no);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 영구삭제 완료");
			return "redirect:/admin/popup/list";
		}else {
			return "common/errorPage";
		}
	}

}
