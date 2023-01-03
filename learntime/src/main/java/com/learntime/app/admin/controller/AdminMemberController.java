package com.learntime.app.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.AdminMemberVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.member.vo.SearchVo;

@RequestMapping("admin")
@Controller
public class AdminMemberController {
	
	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService memberService;
	
	//관리자 회원관리 리스트
		@GetMapping("/member/manage")
		public String memberManage(Model model, SearchVo vo) {
			List<AdminMemberVo> list=memberService.memberList(vo);
			List<Map<String, String>> map=memberService.memberGrade();
			
			model.addAttribute("list",list);
			model.addAttribute("map",map);
			
			return "/admin/member/memberManage";
		}
		//관리자 회원관리 정보수정
		@GetMapping("/member/manage/detail")
		public String memberDetail(String no,Model model) {
			MemberVo user=memberService.selectNo(no);
			model.addAttribute("user",user);
			return "/admin/member/memberDetail";
		}
		
		//관리자 회원관리 정보수정
		@PostMapping("/member/manage/detail")
		public String memberDetail(String no,MemberVo vo) {
			vo.setNo(no);
			int result=memberService.adminMemberedit(vo);
			
			return "redirect:/admin/member/manage/detail?no="+no;
		}
		
//  	관리자 회원관리 정보수정 -탈퇴
		@PostMapping("/member/manage/delete")
		public String memberAdminDelete(String id) {
			System.out.println(id);
			int result=memberService.memberAdminDelete(id);
			if(result==0) {
				return "common/errorPage";
			}
			
			return "redirect:/admin/member/manage";
		}
		
		
		//관리자 회원관리 운영자 생성
		@GetMapping("/member/createOperator")
		public String createOperator() {
			return "/admin/member/createOperator";
		}
		
		//관리자 회원관리 운영자 생성
		@PostMapping("/member/createOperator")
		public String createOperator(MemberVo vo) {
			int result=memberService.createOperator(vo);
			
			if(result==0) {
				return "common/errorPage";
			}
			
			return "redirect:/admin/member/manage";
		}
		
		//관리자 회원등급관리,토큰 조건 관리
		@GetMapping("/member/grade")
		public String memberGrade(Model model) {
			List<Map<String, String>> map=memberService.memberGrade();
			model.addAttribute("map",map);
			
			return "/admin/member/memberGrade";
		}
		//관리자 회원등급관리,토큰 조건 관리
		@PostMapping("/member/grade")
		public String memberGrade() {
			
			
			
			return "redirect:/admin/member/memberGrade";
		}
		
		
		//관리자 회원 리스트에서 등급 수정
		@PostMapping("/member/gradeEdit")
		public String memberListGradeEdit(String[] checkNo,String accumToken) {
			
			Map<String, Object>map=new HashMap<String, Object>();
			map.put("no", checkNo);
			map.put("accumToken", accumToken);
			
			int result=memberService.memberListGradeEdit(map);
			if(result==0) {
				return "common/errorPage";
			}
			
			return "redirect:/admin/member/manage";
			
		}
		
		
		
		//관리자 회원 리스트에서 탈퇴 
		@PostMapping("/member/listDelete")
		public String memberListMemberDelte(String[] checkNo) {
		
			
			int result=memberService.memberListMemberDelte(checkNo);
			if(result==0) {
				return "common/errorPage";
			}
			
			return "redirect:/admin/member/manage";
			
		}


}
