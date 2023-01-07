package com.learntime.app.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.alarm.service.AlarmService;
import com.learntime.app.alarm.vo.AlarmVo;
import com.learntime.app.badge.service.BadgeService;
import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.common.file.FileUploader;
import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.FollowVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.skin.service.SkinService;
import com.learntime.app.skin.vo.SkinVo;
import com.learntime.app.study.service.StudyService;


@Controller
public class MemberController {
	

	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
	
	@Autowired
	@Qualifier("badgeServiceImpl")
	private BadgeService badgeService;
	
	@Autowired
	@Qualifier("skinServiceImpl")
	private SkinService skinService;
	
	@Autowired
	@Qualifier("studyServiceImpl")
	private StudyService studyService;
	
	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService memberService;
	
	@Autowired
    @Qualifier("boardServiceImpl")
    private BoardService bs;
	
	
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
	public String login(MemberVo vo,HttpSession session, HttpServletRequest request,Model model) {
		
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
	public String join(Model model) {
		
		//기술 스택 select
				List<Map<String, String>> techStackList = studyService.selectTechStackList();
				model.addAttribute("techStackList", techStackList);
				
				
				
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
	public int nickCheck(@RequestParam("nick") String nick,MemberVo vo,HttpSession session){
		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		vo.setNick(nick);
		if(loginMember!=null) {
			vo.setNo(loginMember.getNo());
		}
		return memberService.nickCheck(vo);
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
	
//  비밀번호 변경 링크(화면)
	@GetMapping("/member/editPwd")
	public String editPwd(@RequestParam("email") String email,MemberVo vo,HttpSession session) {
		vo.setId(email);
		session.setAttribute("editPwd", vo);
		return "/member/editPwd";
	}
//  비밀번호 변경 링크(서버)
	@PostMapping("/member/editPwd")
	public String editPwd(MemberVo vo,HttpSession session) {
		MemberVo editPwd=(MemberVo)session.getAttribute("editPwd");
		vo.setId(editPwd.getId());
		int editPwdResult=memberService.editPwd(vo);
		if(editPwdResult==0) {
			session.invalidate();
			return"common/errorPage";
		}
		session.invalidate();
		return "main/main";
	}	
//	마이페이지-홈(화면)
	@GetMapping("/member/mypage/home")
	public String mypage(@RequestParam("no") String no,HttpSession session,Model model) {
			//로그인 한 유저와 해당 페이지 유저가 동일 하지 않을경우 사이드 바가 달리 보임
			MemberVo user=memberService.selectNo(no);
			session.setAttribute("userNo",user);
			
			//내 스킨 조회
			List<SkinVo> mySkin=skinService.myskin(no);
			model.addAttribute("mySkin",mySkin);
			
			
//			나를 팔로우 하는 사람 수 구하기
			int followerCnt =memberService.followerCnt(no);
//			내가 팔로우 하는 사람 수 구하기
			int followingCnt =memberService.followingCnt(no);
			
			
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			
			String followingMember=loginMember.getNo();
			MemberVo followerMember=memberService.selectNo(no);
			
			FollowVo follow=new FollowVo();
			follow.setFollowingNo(followingMember);
			follow.setFollowerNo(followerMember.getNo());
			
//			팔로우 유무체크
			int followCheck=memberService.followCheck(follow);
			session.setAttribute("followCheck", followCheck);
			session.setAttribute("followerCnt", followerCnt);
			session.setAttribute("followingCnt", followingCnt);
			
			return "/member/mypage-home";
	}
	
//	마이페이지-홈(소개글 AJAX)
	@ResponseBody
	@PostMapping("/member/mypage/home")
	public String mypage(MemberVo vo,HttpSession session) {
		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		vo.setNo(loginMember.getNo());
		vo.setNick(loginMember.getNick());
		int result=memberService.mypageEditProfile(vo);
		if(result==0) {
			return"0";
		}
		
		return "1";
			
	}

//	마이페이지-팔로잉(화면)
	@GetMapping("/member/mypage/following")
	public String mypageFollowing(@RequestParam("no") String no,HttpSession session,Model model) {
		MemberVo user=memberService.selectNo(no);
		model.addAttribute("userNo",user);
		List<MemberVo>list=memberService.followingList(no);
		model.addAttribute("list",list);


		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		String followingMember=loginMember.getNo();
		MemberVo followerMember=memberService.selectNo(no);
		
		FollowVo follow=new FollowVo();
		follow.setFollowingNo(followingMember);
		follow.setFollowerNo(followerMember.getNo());
		
//		팔로우 유무체크
		int followCheck=memberService.followCheck(follow);
		session.setAttribute("followCheck", followCheck);
		
		return "/member/mypage-following";
	}
	

	
//	마이페이지-팔로우(화면)
	@GetMapping("/member/mypage/follow")
	public String mypageFollow(@RequestParam("no") String no,HttpSession session,Model model) {
		MemberVo user=memberService.selectNo(no);
		model.addAttribute("userNo",user);
		List<MemberVo>list=memberService.followerList(no);
		model.addAttribute("list",list);
		
		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		String followingMember=loginMember.getNo();
		MemberVo followerMember=memberService.selectNo(no);
		
		FollowVo follow=new FollowVo();
		follow.setFollowingNo(followingMember);
		follow.setFollowerNo(followerMember.getNo());

//		팔로우 유무체크 (내 페이지에선 내번호가 두개 들어가서 판단이 안됨 보완해야댐)
		int followCheck=memberService.followCheck(follow);
		session.setAttribute("followCheck", followCheck);
		
		return "/member/mypage-follow";
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
    public String mypageStudy(String details, String status, String keyword, String mno, String pno, Model model) {
       
       if(details == null) {
          details = "apply";
       }
       Map map = new HashMap();
       map.put("details", details);
       map.put("status", status);
       map.put("keyword", keyword);
       map.put("mno", mno);
       
       int listCount = studyService.selectMypageCnt(map);
       int currentPage = Integer.parseInt(pno);
       int pageLimit = 5;
       int boardLimit = 10;
       
       PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
       map.put("pv", pv);
       
       List<Map<String,Object>> myList = studyService.selectMypageList(map);
       model.addAttribute("myList", myList);   
       model.addAttribute("details", details);
       model.addAttribute("pv", pv);
       
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
	      public String myCommunity(HttpSession session, Model model) {
	         MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
	         String userNo = loginMember.getNo();
	         
	         
	         System.out.println("유저넘버"+userNo);
	         //나의 글 조회
	         List<BoardVo> myList = bs.selecMyList(userNo);
	         model.addAttribute("myList", myList);
	      
	         System.out.println("받아온 글 리스트");
	         System.out.println(myList);
	         
	         //나의 스크랩 글 조회
	         List<BoardVo> scrapList = bs.selectScrapList(userNo);
	         model.addAttribute("scrapList", scrapList);
	         
	         System.out.println("스크랩리스트 ->");
	         System.out.println(scrapList);
	      
	         
	         return "/member/mypage-community";
	      }
	   
//	마이페이지-보유한 스킨(화면)
		@GetMapping("/member/mypage/skin")
		public String mypageSkin(String no,HttpSession session,Model model) {
			
			MemberVo user=memberService.selectNo(no);
			session.setAttribute("userNo",user);
//			
//			List<SkinVo> list=skinService.skinListMember();
//			model.addAttribute("list",list);
//			
			return "/member/mypage-skin";
		}
	
	
//	마이페이지-보유한 뱃지(화면)
		@GetMapping("/member/mypage/badge")
		public String mypageBadge(String no,HttpSession session,Model model) {
			
			MemberVo user=memberService.selectNo(no);
			session.setAttribute("userNo",user);
			
			List<BadgeVo> list=badgeService.listSelectMember(no);

			model.addAttribute("list", list);
	
			
			return "/member/mypage-badge";
		}
	
//	마이페이지-dm 리스트(화면)
		@GetMapping("/member/mypage/dm/list")
		public String dmList(@RequestParam("no") String no, MemberVo vo,HttpSession session,Model model) {
			MemberVo user=memberService.selectNo(no);
			model.addAttribute("userNo",user);
			return "/member/mypage-dmList";
		}	
	
//	마이페이지-계정 정보(화면)
		@GetMapping("/member/mypage/edit")
		public String mypageEdit(@RequestParam("no") String no, MemberVo vo,HttpSession session,Model model) {
			MemberVo user=memberService.selectNo(no);
			model.addAttribute("userNo",user);
			return "member/mypage-edit";
		}
		
//  마이페이지-계정 정보 수정 (사진, 닉네임, 자기소개)
		@PostMapping("/member/mypage/edit/profile")
		public String mypageEditProfile(MemberVo vo, HttpSession session,HttpServletRequest request) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			vo.setNo(loginMember.getNo());
			System.out.println(vo.toString());
		      // 파일 저장
		      if (!vo.isEmpty()) {
		    	  String rename=FileUploader.uploadMemberProfile(request, vo); 
		          vo.setImgName(rename);

		      }
			int result=memberService.mypageEditProfile(vo);
			if(result==0) {
				return"common/errorPage";
			}
			
			return "redirect:/member/mypage/edit?no="+vo.getNo();
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
			
			return "member/editCertification";
		}			

//  마이페이지-계정 정보 수정 (비밀번호)
		@PostMapping("/member/mypage/edit/pwd")
		public String mypageEditPwd(MemberVo vo, HttpSession session)throws Exception {
			
			MemberVo edit=(MemberVo) session.getAttribute("loginMember");
			session.setAttribute("findPwd", edit);
			
			memberService.findPwd(edit);
			return "/member/resultPwd";
		}
		
//  마이페이지-계정 정보 수정 (전화번호)
		@PostMapping("/member/mypage/edit/phone")
		public String mypageEditPhone(MemberVo vo, HttpSession session) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			vo.setNo(loginMember.getNo());
			
			int result=memberService.mypageEditPhone(vo);
			if(result==0) {
				return"common/errorPage";
			}
			
			return "redirect:/member/mypage/edit?no="+vo.getNo();
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

		
//---------------팔로우 기능 구현------------------------
		
//		팔로우 요청(AJAX)
		@ResponseBody
		@GetMapping("/member/follow")
		public String memberFollow(@RequestParam("no") String no,HttpSession session) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			MemberVo followingMember=loginMember;
			MemberVo followerMember=memberService.selectNo(no);
			
			FollowVo follow=new FollowVo();
			follow.setFollowingNo(followingMember.getNo());
			follow.setFollowerNo(followerMember.getNo());
			memberService.follow(follow);
			
			
			//new AlarmVo(알람을 받는 회원 번호,알람을 보낸 회원 번호,"알람타입 1~7","보내고싶은 메세지 ")
			//알람타입 (1=공지/2=팔로우/3=댓글/4=멘토링/5=스터디 모집/6=디엠/7=답변채택)
			//AlarmVo alarmVo= new AlarmVo(sendMno, receMno, alarmTypeNo, massage);
			AlarmVo alarmVo=new AlarmVo(followerMember.getNo(),followingMember.getNo(),"2","팔로우 했어요");

			alarmService.insert(alarmVo);
			
			
			
//			나를 팔로우 하는 사람 수 구하기
			int followerCnt =memberService.followerCnt(no);
//			내가 팔로우 하는 사람 수 구하기
			int followingCnt =memberService.followingCnt(no);
			
			Gson gson = new Gson();
			Map<String, Object> followMap=new HashMap<String, Object>();
			
			followMap.put("result", "FollowOk");
			followMap.put("followerCnt",followerCnt);
			followMap.put("followingCnt",followingCnt);
			followMap.put("alarmNo", alarmVo.getNo());
			
			
//			팔로우 유무체크
			int followCheck=memberService.followCheck(follow);
			session.setAttribute("followCheck", followCheck);
			
			String followJson = gson.toJson(followMap);
			return followJson;

		}
		
//		언팔로우 요청(AJAX)
		@ResponseBody
		@GetMapping("/member/unfollow")
		public String memberUnFollow(@RequestParam("no") String no,HttpSession session) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			MemberVo unFollowingMember=loginMember;
			MemberVo unFollowerMember=memberService.selectNo(no);
			
			FollowVo follow=new FollowVo();
			follow.setFollowingNo(unFollowingMember.getNo());
			follow.setFollowerNo(unFollowerMember.getNo());
			
			int result=memberService.unfollow(follow);
			
			
//			나를 팔로우 하는 사람 수 구하기
			int followerCnt =memberService.followerCnt(no);
//			내가 팔로우 하는 사람 수 구하기
			int followingCnt =memberService.followingCnt(no);
			
			Gson gson = new Gson();
			Map<String, Object> followMap=new HashMap<String, Object>();
			
			followMap.put("result", "UnFollowOk");
			followMap.put("followerCnt",followerCnt);
			followMap.put("followingCnt",followingCnt);
			
			
//			팔로우 유무체크

			session.setAttribute("followCheck", 0);
			
			
			String followJson = gson.toJson(followMap);
			return followJson;

		}
		
//		알람	(AJAX)
		@ResponseBody
		@GetMapping(value ="/alarm",produces = "application/text;charset=utf8")
		public String alarmList(HttpSession session) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			
			if(loginMember==null) {
				
				return "";
			}
			List<AlarmVo> listMember=alarmService.listMember(loginMember.getNo());
			
			System.out.println(listMember);
			
			Gson gson = new Gson();
	        HashMap<String, Object> map = new HashMap<String, Object>();

	        map.put("listMember", listMember);

	        String jsonString = gson.toJson(map);
	        
	        return jsonString;
			
			
			

		}
		
		
//		알람삭제	(AJAX)
		@ResponseBody
		@GetMapping(value ="/alarmDelete",produces = "application/text;charset=utf8")
		public String alarmDelete(HttpSession session,String no) {
			System.out.println(no);
			alarmService.delete(no);
			
	        return "잘 지웟슈";
			
			
			

		}
		
		
	
}
