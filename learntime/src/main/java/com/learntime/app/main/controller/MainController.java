package com.learntime.app.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("main")
@Controller
public class MainController {
	
	@GetMapping("")
	public String learnTimeMain() {
		return "main/main";
	}

}
