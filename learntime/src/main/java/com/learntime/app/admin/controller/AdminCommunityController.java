package com.learntime.app.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.CateVo;

@Controller
@RequestMapping("/admin/community")
public class AdminCommunityController {
	
	@Autowired
	public BoardService bs;
	
	
	@GetMapping("/list")
	public String adminCommunity(Model model) {
		
		//카테고리 조회
		List<CateVo> cateList =  bs.selectCate();
		
		//카테고리 담아주기
		model.addAttribute("cateList", cateList);
		
		//게시글 조회
		
		
		return "/admin/community/adminCommunity";
	}
	
	//카테고리 추가
	@PostMapping
	@ResponseBody
	public String addCategory(Model model, String cateName) {
		
		//카테고리 추가
		int result = bs.insertCate(cateName);
		
		// 추가가 안되었을때 처리를 해줘야 하나?
		if (result != 1) {
			return "";
		}
		
		
		
		String jsonString = "";
		
		return jsonString;
	}
	
	@GetMapping("/detail")
	public String adminCommunityDetail() {
		return "/admin/community/adminCommunityDetail";
	}
	
	@GetMapping("/modify")
	public String adminCommunityModify() {
		return "/admin/community/adminCommunityModify";
	}
	
	

}
