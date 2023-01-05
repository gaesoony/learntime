package com.learntime.app.skin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.learntime.app.skin.service.SkinService;
import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.vo.SkinVo;

@Controller
public class SkinController {
	
	
	@Autowired
	@Qualifier("skinServiceImpl")
	private SkinService skinService;
	
	@GetMapping("/skinshop")
	public String List(Model model, SearchVo vo) {
		
		List<SkinVo> list=skinService.skinList(vo);
		model.addAttribute("list",list);
		return "/skinshop/list";
	}


}
