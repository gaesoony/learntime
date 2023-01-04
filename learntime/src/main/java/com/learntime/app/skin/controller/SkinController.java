package com.learntime.app.skin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SkinController {
	
	
	@GetMapping("/skinshop")
	public String List() {
		return "/skinshop/list";
	}


}
