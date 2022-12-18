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

//	마이페이지-팔로잉(화면)
	@GetMapping("/mypage/following")
	public String mypageFollowing() {
		return "/member/mypage-following";
	}
	
//	마이페이지-팔로우(화면)
	@GetMapping("/mypage/follow")
	public String mypageFollow() {
		return "/member/mypage-follow";
	}
	
//	마이페이지-홈(화면)
	@GetMapping("/mypage/home")
	public String mypage() {
		return "/member/mypage-home";
	}
	
	  
//  마이페이지-makegrass list(화면)
    @GetMapping("/mypage/makegrassList")
    public String mypageMakegrassList() {
       return "/member/mypage-makegrassList";
    }
    
// 마이페이지-makegrass scrap(화면)
    @GetMapping("/mypage/makegrassScrap")
    public String mypageMakegrassScrap() {
       return "/member/mypage-makegrassScrap";
    }
    
// 마이페이지-makegrass reply(화면)
    @GetMapping("/mypage/makegrassReply")
    public String mypageMakegrassReply() {
       return "/member/mypage-makegrassReply";
    }
	
//  마이페이지-스터디(화면)
	  @GetMapping("/mypage/study")
	  public String mypageStudy() {
	      return "/member/mypage-study";
	  }
	  
	//   마이페이지-qna list(화면)
      @GetMapping("/mypage/qnaList")
      public String mypageQnaList() {
         return "/member/mypage-qnaList";
      }
      
//   마이페이지-qna scrap(화면)
      @GetMapping("/mypage/qnaScrap")
      public String mypageQnaScrap() {
         return "/member/mypage-qnaScrap";
      }
         
//   마이페이지-qna reply(화면)
      @GetMapping("/mypage/qnaReply")
      public String mypageQnaReply() {
         return "/member/mypage-qnaReply";
      }
      
	   
//   마이페이지-멘토링(화면)	   
	   @GetMapping("/mypage/mentoring")
	   public String myMentoring() {
	      return "member/mypage-mentoring";
	   }
	   
//   마이페이지-커뮤니티(화면)	
	   @GetMapping("/mypage/community")
	   public String myCommunity() {
	      return "member/mypage-community";
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
		
//  마이페이지-계정 정보-비밀번호 변경 이메일 전송(화면)
		@GetMapping("/mypage/edit/pwd")
		public String mypageEditPwd() {
			return "/member/mypage-pwdEdit";
		}
	

	
}
