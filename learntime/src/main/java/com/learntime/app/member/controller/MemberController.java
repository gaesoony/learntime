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
import com.learntime.app.chat.service.ChatService;
import com.learntime.app.chat.vo.ChatVo;
import com.learntime.app.common.file.FileUploader;
import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.makegrass.service.MakegrassService;
import com.learntime.app.makegrass.vo.MakegrassVo;
import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.FollowVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.mertoring.service.MentoringService;
import com.learntime.app.mertoring.vo.ApplicationVo;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.qna.service.QnaService;
import com.learntime.app.qna.vo.QnaVo;
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
	
	@Autowired
	private ChatService chatService;
	
	@Autowired
    @Qualifier("mentoringServiceImpl")
    private MentoringService ms;
	
	@Autowired
	private QnaService qnaService;
	
	@Autowired
	private MakegrassService makegrassService;
	
	
//	????????? ??????-?????????(??????)
	@GetMapping("/wrong")
	public String wrongPathLogin() {
		
		return "common/wrongPath-login";
	}
//	????????? ??????-?????????(???)
	@PostMapping("/wrong")
	public String wrongPathLogin(MemberVo vo,HttpSession session, HttpServletRequest request) {
		MemberVo loginMember=memberService.login(vo);
		if(loginMember==null) {
			return"common/errorPage";
		}
		session.setAttribute("loginMember", loginMember);
		//????????? ????????? ?????? ???????????? ???.
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "redirect:" + referer;
	}
	
	
	
	
//	????????? (??????)
	@PostMapping("/member/login")
	public String login(MemberVo vo,HttpSession session, HttpServletRequest request,Model model) {
		
		MemberVo loginMember=memberService.login(vo);
		
		if(loginMember==null) {
			session.setAttribute("alertMsg", "???????????? ?????? ????????????!");
			return "redirect:/main";
		}
		
		session.setAttribute("loginMember", loginMember);
		
		//????????? ????????? ?????? ???????????? ???.
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "redirect:" + referer;
	}

//	????????????
	@GetMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}

	
	
//	???????????? (??????)
	@GetMapping("/member/join")
	public String join(Model model) {
		
		//?????? ?????? select
				List<Map<String, String>> techStackList = studyService.selectTechStackList();
				model.addAttribute("techStackList", techStackList);
				
				
				
		return "/member/join";
	}
	
//	???????????? (??????)
	@PostMapping("/member/join")
	public String join(MemberVo  vo) throws Exception {
		
		int result=memberService.join(vo);
		
		
		
		
		if(result==1) {
			return "/member/joinCertification";
		}else {
			return"common/errorPage";
		}

	}
	
//	????????? ???????????? (AJAX)
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
	
	
//	????????? ???????????? (AJAX)
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
	
//	???????????? ?????? ?????? ?????? (??????)
	@GetMapping("/member/join/certification")
	public String certification() {
		return "/member/joinCertification";
	}
	
//	?????? ?????? ?????? ?????? (??????)
	@GetMapping("/member/emailAuth")
	public String emailAuth(@RequestParam("email") String email) {
		memberService.emailAuth(email);
		return "/member/emailAuthSuccess";
	}
	
//	?????? ?????? ?????? ?????? (??????)
	@GetMapping("/member/emailAuthSuccess")
	public String emailAuth() {
		return "/member/emailAuthSuccess";
	}
	
//  ????????? ??????(??????)
	@GetMapping("/member/findId")
	public String findId() {
		return "/member/findId";
	}
	
//  ????????? ??????(??????)
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
	
//  ????????? ?????? ??????(??????)
	@GetMapping("/member/resultId")
	public String resultId() {
		return "/member/resultId";
	}
	
	
//  ???????????? ??????(??????)
	@GetMapping("/member/findPwd")
	public String findPwd() {
		return "/member/findPwd";
	}
	
//  ???????????? ??????(??????)
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
	
//  ???????????? ?????? ??????(??????)
	@GetMapping("/member/resultPwd")
	public String resultPwd() {
		return "/member/resultPwd";
	}
	
//  ???????????? ?????? ??????(??????)
	@GetMapping("/member/editPwd")
	public String editPwd(@RequestParam("email") String email,MemberVo vo,HttpSession session) {
		vo.setId(email);
		session.setAttribute("editPwd", vo);
		return "/member/editPwd";
	}
//  ???????????? ?????? ??????(??????)
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
//	???????????????-???(??????)
	@GetMapping("/member/mypage/home")
	public String mypage(String no,HttpSession session,Model model) {
		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		
			//????????? ??? ????????? ?????? ????????? ????????? ?????? ?????? ???????????? ????????? ?????? ?????? ??????
			MemberVo user=memberService.selectNo(no);
			session.setAttribute("userNo",user);
			
			//??? ?????? ??????
			List<SkinVo> mySkin=skinService.myskin(no);
			session.setAttribute("mySkin",mySkin);
			

//			?????? ????????? ?????? ?????? ??? ?????????
			int followerCnt =memberService.followerCnt(no);
//			?????? ????????? ?????? ?????? ??? ?????????
			int followingCnt =memberService.followingCnt(no);
			
			if(loginMember!=null) {
				List<ChatVo> chatlist=chatService.chatMyList(loginMember.getNo());
				model.addAttribute("chatlist", chatlist);
				
				String followingMember=loginMember.getNo();
				MemberVo followerMember=memberService.selectNo(no);
				
				if(followerMember!=null) {
					FollowVo follow=new FollowVo();
					follow.setFollowingNo(followingMember);
					follow.setFollowerNo(followerMember.getNo());
					
//					????????? ????????????
					int followCheck=memberService.followCheck(follow);
					session.setAttribute("followCheck", followCheck);
					session.setAttribute("followerCnt", followerCnt);
					session.setAttribute("followingCnt", followingCnt);
				}
				
			}
			
		
			
			


			List<BadgeVo> list=badgeService.listSelectMember(no);
			model.addAttribute("list", list);
			
			return "/member/mypage-home";
	}
	
//	???????????????-???(????????? AJAX)
	@ResponseBody
	@PostMapping("/member/mypage/home")
	public String mypage(MemberVo vo,HttpSession session) {
		MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
		vo.setNo(loginMember.getNo());
		int result=memberService.mypageEditIntro(vo);
		if(result==0) {
			return"0";
		}
		
		return "1";
			
	}

//	???????????????-?????????(??????)
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
		
//		????????? ????????????
		int followCheck=memberService.followCheck(follow);
		session.setAttribute("followCheck", followCheck);
		
		return "/member/mypage-following";
	}
	

	
//	???????????????-?????????(??????)
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

//		????????? ???????????? (??? ??????????????? ???????????? ?????? ???????????? ????????? ?????? ???????????????)
		int followCheck=memberService.followCheck(follow);
		session.setAttribute("followCheck", followCheck);
		
		return "/member/mypage-follow";
	}
		
	  
//  ???????????????-makegrass list(??????)
    @GetMapping("/member/mypage/makegrassList")
    public String mypageMakegrassList(Model model, MakegrassVo vo, HttpSession session) {
    	List<Map<String, Object>> makegrassList = makegrassService.selectMypageList(vo);
	  	model.addAttribute("makegrassList", makegrassList);
	  	MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
	  	
       return "/member/mypage-makegrassList";
    }
    
// ???????????????-makegrass scrap(??????)
    @GetMapping("/member/mypage/makegrassScrap")
    public String mypageMakegrassScrap() {
       return "/member/mypage-makegrassScrap";
    }
    
// ???????????????-makegrass reply(??????)
    @GetMapping("/member/mypage/makegrassReply")
    public String mypageMakegrassReply() {
       return "/member/mypage-makegrassReply";
    }
	
//  ???????????????-?????????(??????)
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
	  
//   ???????????????-qna list(??????)
      @GetMapping("/member/mypage/qnaList")
      public String mypageQnaList(Model model, QnaVo vo, HttpSession session) {
    	  List<Map<String, Object>> qnaList = qnaService.selectMypageList(vo);
    	  model.addAttribute("qnaList", qnaList);
    	  MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
    	  
         return "/member/mypage-qnaList";
      }
      
//   ???????????????-qna scrap(??????)
      @GetMapping("/member/mypage/qnaScrap")
      public String mypageQnaScrap() {
         return "/member/mypage-qnaScrap";
      }
         
//   ???????????????-qna reply(??????)
      @GetMapping("/member/mypage/qnaReply")
      public String mypageQnaReply() {
         return "/member/mypage-qnaReply";
      }
      
	   
 //   ???????????????-?????????(??????)	   
      @GetMapping("/member/mypage/mentoring")
      public String myMentoring(HttpSession session, Model model) {
          MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
          String userNo = loginMember.getNo();

          //?????? ?????? ????????????
          MentorVo mentorInfo = ms.selectMentor(userNo);
          session.setAttribute("mentorInfo", mentorInfo);
          
          //????????? ????????? ??????
          List<ApplicationVo> avList = ms.selectApplication(userNo);
          System.out.println("????????? ????????? ?????? : "+ avList);
          model.addAttribute("avList", avList);

          return "member/mypage-mentoring";
      }
 
//    ??????????????? - ?????? ??????(??????)
	  @GetMapping("/member/mypage/mentoring/register")
	  public String mentoringRegist(HttpSession session, Model model) {
	
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		// 1. ??????
		List<Map<String, Object>> jobList = ms.selectJob();
		model.addAttribute("jobList", jobList);
		
		// 2. ????????????
		List<Map<String, Object>> cateList = ms.selectCateNo();
		model.addAttribute("cateList", cateList);
		
		// 3. ?????? ?????? ?????? ??????
		if(loginMember != null) {
			MentorVo mv = ms.selectMentor(loginMember.getNo());
//			session.setAttribute("mentorNo", mv.getNo());
		}
		
		return "/member/mypage-mentoring2";
	}
	      
//   ??????????????? - ?????? ??????(??????)
		@PostMapping("/member/mypage/mentoring/register")
		public String mentoringRegist(MentorVo vo, HttpSession session) {
			System.out.println("?????????vo : " + vo);
			int result = ms.mentorRegister(vo);
		
			if (result != 1) {
				return "common/error";
			}
			//?????? ?????? ????????? ???????????? ???????????????
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			session.setAttribute("mentorInfo", ms.selectMentor(loginMember.getNo())); 
			System.out.println(ms.selectMentor(loginMember.getNo()));
			
			return "redirect:/member/mypage/mentoring/manage";
		}
		
//	    ??????????????? - ?????? ??????(??????)
		  @GetMapping("/member/mypage/mentor/modify")
		  public String mentoringModify(HttpSession session, Model model) {
		
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			// 1. ??????
			List<Map<String, Object>> jobList = ms.selectJob();
			model.addAttribute("jobList", jobList);
			
			// 2. ????????????
			List<Map<String, Object>> cateList = ms.selectCateNo();
			model.addAttribute("cateList", cateList);
			
			return "/member/mypage-mentorModify";
		}
		  
//   ??????????????? - ?????? ??????(??????)
	@PostMapping("/member/mypage/mentor/modify")
	public String mentoringModify(MentorVo vo, HttpSession session) {
		System.out.println("?????????vo : " + vo);
		int result = ms.mentorModify(vo);
	
		if (result != 1) {
			return "common/error";
		}
		
		 //?????? ?????? ?????? ????????????
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
        String userNo = loginMember.getNo();
        MentorVo mentorInfo = ms.selectMentor(userNo);
        session.setAttribute("mentorInfo", mentorInfo);
		
		return "/member/mypage-mentoring3";
	}
		  
      
//    ???????????????  - ????????? ?????? (??????)
       @GetMapping("/member/mypage/mentoring/manage")
       public String myMentoringManage(HttpSession session, Model model) {
    	   
    	   MentorVo myMentorInfo = (MentorVo) session.getAttribute("mentorInfo");
    	   String myNo = myMentorInfo.getNo();
    	   
    	   List<ApplicationVo> requestList = ms.selectRequestList(myNo);
    	   System.out.println(requestList);
    	   
    	   model.addAttribute("requestList", requestList);
    	   
	   	   return "/member/mypage-mentoring3";
	   }
      
	   
//   ???????????????-????????????(??????)	
	   @GetMapping("/member/mypage/community")
	      public String myCommunity(HttpSession session, Model model, String searchType, String search) {
	         MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
	         String userNo = loginMember.getNo();
	         
	         //?????? ??? ?????????
	         Map<String, String> filter = new HashMap<String, String>();
	         filter.put("userNo", userNo);
	         
	         if(search != null) {
	        	 filter.put("searchType", searchType);
		         filter.put("search", search);
	         }
	         
	         //?????? ??? ??????
	         List<BoardVo> myList = bs.selecMyList(filter);
	         model.addAttribute("myList", myList);
	         
	         return "/member/mypage-community1";
	      }

//   ???????????????-????????????(??????)	
	   @GetMapping("/member/mypage/community2")
	      public String myCommunity2(HttpSession session, Model model, String searchType, String search) {
	         MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
	         String userNo = loginMember.getNo();
	         
	         //?????? ??? ?????????
	         Map<String, String> filter = new HashMap<String, String>();
	         filter.put("userNo", userNo);
	         
	         //?????? ??????
	         if(searchType != null) {
		         if(searchType.equals("title")) {
		        	 searchType = "FB.TITLE";
		         }
		         if(searchType.equals("writerNick")) {
		        	 searchType = "M.WRITER_NICK";
		         }
	         }
	         
	         
	         if(search != null && searchType != null) {
	        	 filter.put("searchType", searchType);
		         filter.put("search", search);
	         }
	         
	         //?????? ????????? ??? ??????
	         List<BoardVo> scrapList = bs.selectScrapList(filter);
	         model.addAttribute("scrapList", scrapList);
	         
	         return "/member/mypage-community2";
	      }
	   
//	???????????????-????????? ??????(??????)
		@GetMapping("/member/mypage/skin")
		public String mypageSkin(String no,HttpSession session,Model model) {
			
			MemberVo user=memberService.selectNo(no);
			session.setAttribute("userNo",user);
			
			//??? ?????? ??????
			List<SkinVo> mySkinList=skinService.myskin(no);
			
			if(mySkinList!=null) {
				model.addAttribute("mySkinList",mySkinList);
			}
			
			
			return "/member/mypage-skin";
		}
	
	
//	???????????????-????????? ??????(??????)
		@GetMapping("/member/mypage/badge")
		public String mypageBadge(String no,HttpSession session,Model model) {
			
			MemberVo user=memberService.selectNo(no);
			session.setAttribute("userNo",user);
			
			List<BadgeVo> list=badgeService.listSelectMember(no);

			model.addAttribute("list", list);
			return "/member/mypage-badge";
		}
	
//	???????????????-dm ?????????(??????)
		@GetMapping("/member/mypage/dm/list")
		public String dmList(String no, MemberVo vo,HttpSession session,Model model) {
			MemberVo user=memberService.selectNo(no);
			model.addAttribute("userNo",user);
			
			List<ChatVo> chatlist=chatService.chatList(no);
			session.setAttribute("chatlist", chatlist);
			return "/member/mypage-dmList";
		}	
	
//	???????????????-?????? ??????(??????)
		@GetMapping("/member/mypage/edit")
		public String mypageEdit(String no, MemberVo vo,HttpSession session,Model model) {
			MemberVo user=memberService.selectNo(no);
			model.addAttribute("userNo",user);
			
			return "member/mypage-edit";
		}
		
//  ???????????????-?????? ?????? ?????? (??????, ?????????, ????????????)
		@PostMapping("/member/mypage/edit/profile")
		public String mypageEditProfile(MemberVo vo, HttpSession session,HttpServletRequest request) {
			MemberVo loginMember=(MemberVo)session.getAttribute("loginMember");
			vo.setNo(loginMember.getNo());
			System.out.println(vo.toString());
		      // ?????? ??????
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
		
//  ???????????????-?????? ?????? ?????? (?????????)
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

//  ???????????????-?????? ?????? ?????? (????????????)
		@PostMapping("/member/mypage/edit/pwd")
		public String mypageEditPwd(MemberVo vo, HttpSession session)throws Exception {
			
			MemberVo edit=(MemberVo) session.getAttribute("loginMember");
			session.setAttribute("findPwd", edit);
			
			memberService.findPwd(edit);
			return "/member/resultPwd";
		}
		
//  ???????????????-?????? ?????? ?????? (????????????)
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

//  	???????????????-??????
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
		
//		???????????????-?????? ?????? ?????? (?????????)-?????? ?????? ?????? (??????)
		@GetMapping("/member/edit/certification")
		public String certificationEditMail() {
			return "/member/editCertification";
		}	

		
//---------------????????? ?????? ??????------------------------
		
//		????????? ??????(AJAX)
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
			
			
			//new AlarmVo(????????? ?????? ?????? ??????,????????? ?????? ?????? ??????,"???????????? 1~7","??????????????? ????????? ")
			//???????????? (1=??????/2=?????????/3=??????/4=?????????/5=????????? ??????/6=??????/7=????????????)
			//AlarmVo alarmVo= new AlarmVo(sendMno, receMno, alarmTypeNo, massage);
			AlarmVo alarmVo=new AlarmVo(followerMember.getNo(),followingMember.getNo(),"2","????????? ?????????");
			alarmService.insert(alarmVo);
			
			
			
//			?????? ????????? ?????? ?????? ??? ?????????
			int followerCnt =memberService.followerCnt(no);
//			?????? ????????? ?????? ?????? ??? ?????????
			int followingCnt =memberService.followingCnt(no);
			
			Gson gson = new Gson();
			Map<String, Object> followMap=new HashMap<String, Object>();
			
			followMap.put("result", "FollowOk");
			followMap.put("followerCnt",followerCnt);
			followMap.put("followingCnt",followingCnt);
			followMap.put("alarmNo", alarmVo.getNo());
			
			
//			????????? ????????????
			int followCheck=memberService.followCheck(follow);
			session.setAttribute("followCheck", followCheck);
			
			String followJson = gson.toJson(followMap);
			return followJson;

		}
		
//		???????????? ??????(AJAX)
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
			
			
//			?????? ????????? ?????? ?????? ??? ?????????
			int followerCnt =memberService.followerCnt(no);
//			?????? ????????? ?????? ?????? ??? ?????????
			int followingCnt =memberService.followingCnt(no);
			
			Gson gson = new Gson();
			Map<String, Object> followMap=new HashMap<String, Object>();
			
			followMap.put("result", "UnFollowOk");
			followMap.put("followerCnt",followerCnt);
			followMap.put("followingCnt",followingCnt);
			
			
//			????????? ????????????

			session.setAttribute("followCheck", 0);
			
			
			String followJson = gson.toJson(followMap);
			return followJson;

		}
		
//		??????	(AJAX)
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
		
		
//		????????????	(AJAX)
		@ResponseBody
		@GetMapping(value ="/alarmDelete",produces = "application/text;charset=utf8")
		public String alarmDelete(HttpSession session,String no) {
			System.out.println(no);
			alarmService.delete(no);
			
	        return "??? ?????????";
			
			
			

		}
		
		
	
}
