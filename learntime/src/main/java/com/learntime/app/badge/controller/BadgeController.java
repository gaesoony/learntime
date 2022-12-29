package com.learntime.app.badge.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.learntime.app.badge.service.BadgeService;
import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.common.file.FileUploader;

@Controller
public class BadgeController {
	
	@Autowired
	@Qualifier("badgeServiceImpl")
	private BadgeService badgeService;
	
	//관리자 뱃지 리스트
	@GetMapping("admin/badge/list")
	public String badgeList() {
		return "/admin/badge/list";
	}
	
	//관리자 뱃지 상세조회(수정)
	@GetMapping("admin/badge/edit")
	public String badgeEdit() {
		return "/admin/badge/edit";
	}
	
	//관리자 뱃지 작성하기(화면)
	@GetMapping("admin/badge/write")
	public String badgeWrite() {
		return "/admin/badge/write";
	}
	
	//관리자 뱃지 작성하기(서버)
	@PostMapping("admin/badge/write")
	public String badgeWrite(BadgeVo vo,HttpServletRequest request) {
		
		 if (!vo.isEmpty()) {
	    	  String rename=FileUploader.uploadBadge(request, vo); 
	          vo.setImgName(rename);

	      }
		 
		int result=badgeService.write(vo);
		if(result==0) {
			return"common/errorPage";
		}
		
		return "admin/badge/list";
		
	}


}
