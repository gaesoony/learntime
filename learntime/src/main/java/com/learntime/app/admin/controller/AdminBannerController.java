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

import com.learntime.app.admin.service.BannerService;
import com.learntime.app.admin.vo.BannerVo;
import com.learntime.app.common.file.FileUploader;


@RequestMapping("admin/banner")
@Controller
public class AdminBannerController {
	
	@Autowired
	private BannerService service;
	
	//관리자페이지 배너 조회 (화면)
	@GetMapping("list")
	public String list(Model model) {
		
		//디비에서 배너 리스트 조회
		List<Map<String, Object>> bannerList = service.selectBannerList();
		model.addAttribute("bannerList", bannerList);
		
		return "admin/banner/list";
	}
	
	//관리자페이지 배너 작성 (화면)
	@GetMapping("write")
	public String write() {
		
		return "admin/banner/write";
		
	}
	
	//관리자페이지 배너 작성 (DB)
	@PostMapping("write")
	public String write(Model model, BannerVo vo, HttpServletRequest req, HttpSession session) {
		
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
			changeName = FileUploader.uploadBanner(req, vo);
		}
		
		vo.setChangeName(changeName);
		
		//배너 insert
		int result = service.insertBanner(vo);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 추가 완료");
			return "redirect:/admin/banner/list";
			
		}else {
			return "common/errorPage";
		}

	}
	
	//관리자페이지 배너 수정 (화면)
	@GetMapping("edit")
	public String edit(String no, Model model) {
		
		//디비에서 배너 하나 조회
		Map<String, Object> bannerOne = service.selectBannerOne(no);
		model.addAttribute("bannerOne", bannerOne);
		
		return "admin/banner/edit";
	}
	
	//관리자페이지 배너 수정 (DB)
	@PostMapping("edit")
	public String edit(String no, HttpSession session, BannerVo vo, HttpServletRequest req) {
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
			changeName = FileUploader.uploadBanner(req, vo);
		}
		
		vo.setChangeName(changeName);
		System.out.println("처리완료된"+vo);
		int result = service.editBanner(vo);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 수정 완료");
			return "redirect:/admin/banner/list";
		}else {
			return "common/errorPage";
		}
		
	
	}
	
	//관리자페이지 배너 비활성화
	@GetMapping("disable")
	public String disable(String no, HttpSession session) {
		
		int result = service.disableBanner(no);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 비활성화 완료");
			return "redirect:/admin/banner/list";
		}else {
			return "common/errorPage";
		}
		
	}
	
	//관리자페이지 배너 활성화
	@GetMapping("enable")
	public String enable(String no, HttpSession session) {
		
		int result = service.enableBanner(no);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 활성화 완료");
			return "redirect:/admin/banner/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//관리자페이지 배너 영구삭제 
	@GetMapping("delete")
	public String delete(String no, HttpSession session) {
		
		int result = service.deleteBanner(no);
		if(result == 1) {
			session.setAttribute("alertMsg", "배너 영구삭제 완료");
			return "redirect:/admin/banner/list";
		}else {
			return "common/errorPage";
		}
	}

}
