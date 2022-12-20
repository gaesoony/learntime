package com.learntime.app.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.MemberVo;


@Controller
public class MemberController {
	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService memberService;
	
	
//	로그인 (서버)
	@PostMapping("/member/login")
	public String lgoin(MemberVo vo,HttpSession session, HttpServletRequest request) {
		MemberVo loginMember=memberService.login(vo);
		if(loginMember==null) {
			return"common/errorPage";
		}
		session.setAttribute("loginMember", loginMember);
		//로그인 성공시 이전 페이지로 감.
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "main/main";
	}
	
	
//	회원가입 (화면)
	@GetMapping("/member/join")
	public String join() {
		return "/member/join";
	}
	
//	회원가입 (서버)
	@PostMapping("/member/join")
	public String join(MemberVo  vo) {
		
		int result=memberService.join(vo);
		if(result==1) {
			return "main/main";
		}else {
			return"common/errorPage";
		}

	}
	
	
	
//	회원가입 승인메일 발송 (화면)
	@GetMapping("/member/join/certification")
	public String certification() {
		return "/member/joinCertification";
	}
	
//  아이디 찾기(화면)
	@GetMapping("/member/findId")
	public String findId() {
		return "/member/findId";
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
		
//  마이페이지-계정 정보-비밀번호 변경 이메일 전송(화면)
		@GetMapping("/member/mypage/edit/pwd")
		public String mypageEditPwd() {
			return "/member/mypage-pwdEdit";
		}
	

	
}
