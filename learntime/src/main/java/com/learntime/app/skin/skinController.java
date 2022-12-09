package com.learntime.app.skin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class skinController {
	
	@GetMapping("/skinshop")
	public String List() {
		return "/skinshop/list";
	}

}
