package com.learntime.app.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainControllerSec {
	
	//메인 아래부분 화면
	@GetMapping("main/mainSec")
	public String mainSec() {
		return "main/mainSec";
	}

}
