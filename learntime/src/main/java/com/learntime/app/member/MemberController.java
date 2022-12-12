package com.learntime.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("member")
@Controller
public class MemberController {
//	회원가입 (화면)
	@GetMapping("/join")
	public String join() {
		return "/member/join";
	}
	
//	회원가입 승인메일 발송 (화면)
	@GetMapping("/join/certification")
	public String certification() {
		return "/member/joinCertification";
	}
	
//  아이디 찾기(화면)
	@GetMapping("/findId")
	public String findId() {
		return "/member/findId";
	}
	
//  아이디 찾기 결과(화면)
	@GetMapping("/resultId")
	public String resultId() {
		return "/member/resultId";
	}
	
	
//  비밀번호 찾기(화면)
	@GetMapping("/findPwd")
	public String findPwd() {
		return "/member/findPwd";
	}
	
//  비밀번호 찾기 결과(화면)
	@GetMapping("/resultPwd")
	public String resultPwd() {
		return "/member/resultPwd";
	}
	
	
//	마이페이지-홈(화면)
	@GetMapping("/mypage/home")
	public String mypage() {
		return "/member/mypage-home";
	}
	
//  마이페이지-스터디(화면)
	  @GetMapping("/mypage/study")
	  public String mypageStudy() {
	      return "/member/mypage-study";
	  }
	  
//   마이페이지-qna(화면)
	   @GetMapping("/mypage/qna")
	   public String mypageQna() {
	      return "/member/mypage-qna";
	   }
  
//	마이페이지-보유한 스킨(화면)
		@GetMapping("/mypage/skin")
		public String mypageSkin() {
			return "/member/mypage-skin";
		}
	
	
//	마이페이지-보유한 뱃지(화면)
		@GetMapping("/mypage/badge")
		public String mypageBadge() {
			return "/member/mypage-badge";
		}
	
//	마이페이지-dm 리스트(화면)
		@GetMapping("/mypage/dm/list")
		public String dmList() {
			return "/member/mypage-dmList";
		}	
	
//	마이페이지-계정 정보(화면)
		@GetMapping("/mypage/edit")
		public String mypageEdit() {
			return "/member/mypage-edit";
		}
	
	
	
	
	
}
