package com.learntime.app.badge.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.learntime.app.badge.service.BadgeService;
import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.badge.vo.SearchVo;
import com.learntime.app.common.file.FileUploader;



@Controller
public class BadgeController {
	
	@Autowired
	@Qualifier("badgeServiceImpl")
	private BadgeService badgeService;
	
	//관리자 뱃지 리스트(화면)
	@GetMapping("admin/badge/list")
	public String badgeList(SearchVo vo,Model model) {
		
		
		List<BadgeVo> list=badgeService.listSelectAll(vo);
		int badgeCnt=badgeService.badgeCnt();
		model.addAttribute("list", list);
		model.addAttribute("badgeCnt", badgeCnt);
		
		return "/admin/badge/list";
	}
	
	
	
	//관리자 뱃지 상세조회(화면)
	@GetMapping("admin/badge/edit")
	public String badgeEdit(String no,Model model) {
		
		BadgeVo selectOne=badgeService.selectOne(no);
		model.addAttribute("selectOne", selectOne);
		return "/admin/badge/edit";
	}
	
	//관리자 뱃지 수정(서버)
	@PostMapping("admin/badge/edit")
	public String badgeEdit(BadgeVo vo,HttpServletRequest request) {
		vo.getImgPath().isEmpty();
		
		if (!vo.isEmpty()) {
	    	  String rename=FileUploader.uploadBadge(request, vo); 
	          vo.setImgName(rename);

	      }
		
		int result=badgeService.edit(vo);
		
		
		if(result==0) {
			return"common/errorPage";
		}
		
		return "redirect:/admin/badge/list";
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
		
		return "redirect:/admin/badge/list";
		
	}


}
