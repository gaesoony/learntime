package com.learntime.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("member")
@Controller
public class MemberController {

	@GetMapping("/join")
	public String join() {
		return "/member/join";
	}
}
