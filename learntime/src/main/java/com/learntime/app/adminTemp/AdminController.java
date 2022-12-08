package com.learntime.app.adminTemp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class AdminController {

	@GetMapping("/side")
	public String join() {
		return "/common/admin-side";
	}
}
