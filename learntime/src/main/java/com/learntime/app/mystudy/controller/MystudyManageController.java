package com.learntime.app.mystudy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.common.file.FileUploader;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.mystudy.vo.ProfileVo;
import com.learntime.app.study.vo.SearchVo;

@RequestMapping("mystudy/manage")
@Controller
public class MystudyManageController {
	
	@Autowired
	private StudyService service;
	
	//게시판 템플릿 관리 스터디정보 수정 화면
	@GetMapping("/info")
	public String edit(Model model, HttpSession session, String gno) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		//모집 구분 select
		List<Map<String, String>> groupTypeList = service.selectGroupTypeList();
		model.addAttribute("groupTypeList", groupTypeList);
		
		//진행 기간 select
		List<Map<String, String>> groupPeriodList = service.selectGroupPeriodList();
		model.addAttribute("groupPeriodList", groupPeriodList);
		
		//기술 스택 select
		List<Map<String, String>> techStackList = service.selectTechStackList();
		model.addAttribute("techStackList", techStackList);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);		

		return "mystudy/manage/info";
	}
	
	//스터디/프로젝트 수정 (DB)
	@PostMapping("/info")
	public String edit(SearchVo sv, GroupVo vo, String gno, HttpSession session) {
		
		System.out.println("수정하려고 받은 vo값:" + vo);
		vo.setNo(gno);
		
		int result = service.updateGroupInfo(vo);
		
		if(result >= 1) {
			session.setAttribute("alertMsg", "글 수정 완료!");
			return "redirect:/mystudy/main?gno="+gno;
		}else {
			return "common/errorPage";
		}
		
	}
	
	
	//게시판 템플릿 관리 프로필 수정 화면
	@GetMapping("profile")
	public String profile(Model model, String gno,HttpSession session) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);		
		return "mystudy/manage/profile";
	}
	
	
	
	
	//게시판 템플릿 관리 프로필 수정 (DB)
	@PostMapping("profile")
	public String profile(Model model, ProfileVo vo, HttpServletRequest req, String gno, HttpSession session) {
		
		String changeName = "";
		
		//파일 저장
		if(!vo.isEmpty()) {
			changeName = FileUploader.uploadGroupProfile(req, vo);
		}
		
		vo.setChangeName(changeName);
		vo.setNo(gno);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		
		//프사, 이름 업데이트
		int result = service.updateProfile(vo);
		if(result == 1) {
			session.setAttribute("alertMsg", "프로필 수정 성공!");
			return "redirect:/mystudy/manage/profile?gno="+gno;
			
		}else {
			return "common/errorPage";
		}
		
	}
	
	
	//게시판 템플릿 관리 참여멤버 관리 화면
	@GetMapping("member")
	public String member(Model model, String gno) {
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		return "mystudy/manage/memberTest";
	}
	
	//게시판 템플릿 관리 참여멤버 상태 선택 에이젝스
	@GetMapping(value = "member/status" , produces = "application/text; charset=utf8")
	@ResponseBody
	public String memberStatus(String gno, String status) {
		System.out.println("참여멤버 들어옴?");
		Map map = new HashMap();
		map.put("gno", gno);
		map.put("status", status);
		
		List<Map<String, String>> memberList = service.selectGroupMemberListByStatus(map);
		
		Gson gson = new Gson();
	    HashMap<String, Object> result = new HashMap<String, Object>();
	    
	    result.put("result", memberList);
	    
	    String jsonString = gson.toJson(result);
		return jsonString;
		
	}
	
	//게시판 템플릿 관리 참여멤버 상태 선택 에이젝스
	@GetMapping(value = "member/answer" , produces = "application/text; charset=utf8")
	@ResponseBody
	public String memberAnswer(String rno) {
		System.out.println("답변 들어옴?");
		
		List<Map<String, String>> answerList = service.selectAnswerListByNo(rno);
		
		Gson gson = new Gson();
	    HashMap<String, Object> result = new HashMap<String, Object>();
	    
	    result.put("result", answerList);
	    
	    String jsonString = gson.toJson(result);
		return jsonString;
		
	}
	
	//가입신청 수락하기
	@GetMapping("member/confirm")
	public String memberConfirm(String rno, String gno) {
		System.out.println("가입신청 수락 들어옴!");
		int result = service.confirm(rno);
		
		if(result == 1) {
			return "redirect:/mystudy/manage/member?gno="+gno;
			
		}else {
			return "common/errorPage";
		}
	}
	
	//가입신청 거절하기
	@GetMapping("member/reject")
	public String memberReject(String rno, String gno) {
		
		int result = service.reject(rno);
		
		if(result == 1) {
			return "redirect:/mystudy/manage/member?gno="+gno;
			
		}else {
			return "common/errorPage";
		}
	}
	
	//모임장 위임하기
	@GetMapping("member/delegate")
	public String memberDelegate(String rno, String gno) {
		System.out.println("모임장 위임 들어옴");
		int result = service.delegate(rno);
		
		if(result == 1) {
			return "redirect:/mystudy/main?gno="+gno;
			
		}else {
			return "common/errorPage";
		}
	}
	
	//강퇴 또는 탈퇴시키기
	@GetMapping("member/kick")
	public String memberKick(String rejoin, String rno, String gno) {
		System.out.println("강퇴 들어옴");
		
		int result = 0;
		if(rejoin.equals("Y")) {
			//탈퇴 : 재가입 가능
			result = service.quit(rno);
		}
		
		if(rejoin.equals("N")) {
			//강퇴 : 재가입 불가
			result = service.kick(rno);
		}
		
		if(result == 1) {
			return "redirect:/mystudy/manage/member?gno="+gno;
			
		}else {
			return "common/errorPage";
		}
	}
	
	
	
	//게시판 템플릿 관리 카테고리 수정 화면
	@GetMapping("category")
	public String category(Model model, String gno) {
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		return "mystudy/manage/category";
	}

}
