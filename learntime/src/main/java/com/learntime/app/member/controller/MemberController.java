package com.learntime.app.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.MemberVo;


@Controller
public class MemberController {
	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService memberService;
	
	
//	잘못된 경로-로그인(화면)
	@GetMapping("/wrong")
	public String wrongPathLogin() {
		
		return "common/wrongPath-login";
	}
//	잘못된 경로-로그인(서)
	@PostMapping("/wrong")
	public String wrongPathLogin(MemberVo vo,HttpSession session, HttpServletRequest request) {
		MemberVo loginMember=memberService.login(vo);
		if(loginMember==null) {
			return"common/errorPage";
		}
		session.setAttribute("loginMember", loginMember);
		//로그인 성공시 이전 페이지로 감.
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "redirect:" + referer;
	}	
	
	
//	로그인 (서버)
	@PostMapping("/member/login")
	public String login(MemberVo vo,HttpSession session, HttpServletRequest request) {
		MemberVo loginMember=memberService.login(vo);
		if(loginMember==null) {
			return"common/errorPage";
		}
		session.setAttribute("loginMember", loginMember);
		//로그인 성공시 이전 페이지로 감.
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "redirect:" + referer;
	}

//	로그아웃
	@GetMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}

	
	
//	회원가입 (화면)
	@GetMapping("/member/join")
	public String join() {
		return "/member/join";
	}
	
//	회원가입 (서버)
	@PostMapping("/member/join")
	public String join(MemberVo  vo) throws Exception {
		
		int result=memberService.join(vo);
		
		
		if(result==1) {
			return "/member/joinCertification";
		}else {
			return"common/errorPage";
		}

	}
	
//	닉네임 중복검사 (AJAX)
	@ResponseBody
	@GetMapping("/member/nickCheck")
	public int nickCheck(@RequestParam("nick") String nick){ 
		return memberService.nickCheck(nick);
	}
	
	
//	이메일 중복검사 (AJAX)
	@ResponseBody
	@GetMapping("/member/emailCheck")
	public int emailCheck(@RequestParam("id")String id, MemberVo vo,HttpSession session){
		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		vo.setId(id);
		if(loginMember!=null) {
			vo.setNo(loginMember.getNo());
		}
		return memberService.emailCheck(vo);
	}
	
//	회원가입 인증 메일 발송 (화면)
	@GetMapping("/member/join/certification")
	public String certification() {
		return "/member/joinCertification";
	}
	
//	메일 인증 확인 링크 (화면)
	@GetMapping("/member/emailAuth")
	public String emailAuth(@RequestParam("email") String email) {
		memberService.emailAuth(email);
		return "/member/emailAuthSuccess";
	}
	
//	메일 인증 확인 링크 (화면)
	@GetMapping("/member/emailAuthSuccess")
	public String emailAuth() {
		return "/member/emailAuthSuccess";
	}
	
//  아이디 찾기(화면)
	@GetMapping("/member/findId")
	public String findId() {
		return "/member/findId";
	}
	
//  아이디 찾기(서버)
	@PostMapping("/member/findId")
	public String findId(String phone,HttpSession session) {
		
		MemberVo findId=memberService.findId(phone);
		if(findId==null) {
			session.invalidate();
			return "redirect:/member/resultId";
		}
		session.setAttribute("findId", findId);
		return"/member/resultId";
		
	}
	
//  아이디 찾기 결과(화면)
	@GetMapping("/member/resultId")
	public String resultId() {
		return "/member/resultId";
	}
	
	
//  비밀번호 찾기(화면)
	@GetMapping("/member/findPwd")
	public String findPwd() {
		return "/member/findPwd";
	}
	
//  비밀번호 찾기(서버)
	@PostMapping("/member/findPwd")
	public String findPwd(MemberVo vo,HttpSession session)throws Exception {
		MemberVo findPwd=memberService.findPwd(vo);
		if(findPwd==null) {
			session.invalidate();
			return "redirect:/member/resultPwd";
		}
		session.setAttribute("findPwd", findPwd);
		return"/member/resultPwd";
	}
	
//  비밀번호 찾기 결과(화면)
	@GetMapping("/member/resultPwd")
	public String resultPwd() {
		return "/member/resultPwd";
	}

//	마이페이지-팔로잉(화면)
	@GetMapping("/member/mypage/following")
	public String mypageFollowing() {
		return "/member/mypage-following";
	}
	
//	마이페이지-팔로우(화면)
	@GetMapping("/member/mypage/follow")
	public String mypageFollow() {
		return "/member/mypage-follow";
	}
	
//	마이페이지-홈(화면)
	@GetMapping("/member/mypage/home")
	public String mypage() {
		return "/member/mypage-home";
	}
	
	  
//  마이페이지-makegrass list(화면)
    @GetMapping("/member/mypage/makegrassList")
    public String mypageMakegrassList() {
       return "/member/mypage-makegrassList";
    }
    
// 마이페이지-makegrass scrap(화면)
    @GetMapping("/member/mypage/makegrassScrap")
    public String mypageMakegrassScrap() {
       return "/member/mypage-makegrassScrap";
    }
    
// 마이페이지-makegrass reply(화면)
    @GetMapping("/member/mypage/makegrassReply")
    public String mypageMakegrassReply() {
       return "/member/mypage-makegrassReply";
    }
	
//  마이페이지-스터디(화면)
	  @GetMapping("/member/mypage/study")
	  public String mypageStudy() {
	      return "/member/mypage-study";
	  }
	  
//   마이페이지-qna list(화면)
      @GetMapping("/member/mypage/qnaList")
      public String mypageQnaList() {
         return "/member/mypage-qnaList";
      }
      
//   마이페이지-qna scrap(화면)
      @GetMapping("/member/mypage/qnaScrap")
      public String mypageQnaScrap() {
         return "/member/mypage-qnaScrap";
      }
         
//   마이페이지-qna reply(화면)
      @GetMapping("/member/mypage/qnaReply")
      public String mypageQnaReply() {
         return "/member/mypage-qnaReply";
      }
      
	   
//   마이페이지-멘토링(화면)	   
	   @GetMapping("/member/mypage/mentoring")
	   public String myMentoring() {
	      return "member/mypage-mentoring";
	   }
	   
//   마이페이지-커뮤니티(화면)	
	   @GetMapping("/member/mypage/community")
	   public String myCommunity() {
	      return "member/mypage-community";
	   }
	   
//	마이페이지-보유한 스킨(화면)
		@GetMapping("/member/mypage/skin")
		public String mypageSkin() {
			return "/member/mypage-skin";
		}
	
	
//	마이페이지-보유한 뱃지(화면)
		@GetMapping("/member/mypage/badge")
		public String mypageBadge() {
			return "/member/mypage-badge";
		}
	
//	마이페이지-dm 리스트(화면)
		@GetMapping("/member/mypage/dm/list")
		public String dmList() {
			return "/member/mypage-dmList";
		}	
	
//	마이페이지-계정 정보(화면)
		@GetMapping("/member/mypage/edit")
		public String mypageEdit() {
			
			return "/member/mypage-edit";
		}
		
//  마이페이지-계정 정보 수정 (사진, 닉네임, 자기소개)
		@PostMapping("/member/mypage/edit/profile")
		public String mypageEditProfile(MemberVo vo, HttpSession session) {
			
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			vo.setNo(loginMember.getNo());
			
			int result=memberService.mypageEditProfile(vo);
			if(result==0) {
				return"common/errorPage";
			}
			session.setAttribute("loginMember", vo);
			return "redirect:/member/mypage/edit";
		}
		
//  마이페이지-계정 정보 수정 (이메일)
		@PostMapping("/member/mypage/edit/email")
		public String mypageEditEmail(MemberVo vo, HttpSession session)throws Exception {
			
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			vo.setNo(loginMember.getNo());
			
			int result=memberService.mypageEditEmail(vo);
			if(result==0) {
				return"common/errorPage";
			}
			session.setAttribute("loginMember", vo);
			return "member/editCertification";
		}			
		

//  	마이페이지-탈퇴
		@PostMapping("/member/delete")
		public String memberDeletePwd(MemberVo vo,HttpSession session) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			vo.setId(loginMember.getId());
			int result=memberService.memberDeletePwd(vo);
			if(result==0) {
				return "common/errorPage";
			}
			session.invalidate();
			return "redirect:/main";
		}
		
//		마이페이지-계정 정보 수정 (이메일)-인증 메일 발송 (화면)
		@GetMapping("/member/edit/certification")
		public String certificationEditMail() {
			return "/member/editCertification";
		}	

	
}
