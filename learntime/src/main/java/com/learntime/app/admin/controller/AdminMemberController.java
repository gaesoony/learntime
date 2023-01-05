package com.learntime.app.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.common.file.FileUploader;
import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.AdminMemberVo;
import com.learntime.app.member.vo.MemberGradeVo;
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
		public String memberManage(Model model, SearchVo vo,String pno) {
			
			int listCount =memberService.memberCnt(vo);
			int currentPage = Integer.parseInt(pno);
			int pageLimit = 10;
			int boardLimit = 10;
		       
	        PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

	        Map pageMap = new HashMap();
	        pageMap.put("pv", pv);
	        pageMap.put("vo", vo);
	        
	        List<AdminMemberVo> list=memberService.memberList(pageMap);
	        List<Map<String, String>> map=memberService.memberGrade();
	        
	        System.out.println(list);
			model.addAttribute("list",list);
			model.addAttribute("map",map);
			model.addAttribute("pv",pv);
			model.addAttribute("vo",vo);
			model.addAttribute("listCount",listCount);
			
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
		public String memberGrade(MemberGradeVo vo,HttpServletRequest request) {
			
			for(int i=0;i<vo.getMemberGradeVoList().size();i++) {
				if (!vo.getMemberGradeVoList().get(i).getImgPath().isEmpty()) {
			    	  String rename=FileUploader.uploadMemberGrade(request, vo.getMemberGradeVoList().get(i).getImgPath());
			    	  vo.getMemberGradeVoList().get(i).setImgName(rename);
			    	  
			      }
				
				System.out.println(vo.getMemberGradeVoList().get(i));
			}
			
			
			int result=memberService.memberGradeEdit(vo.getMemberGradeVoList());
		
			if(result==0) {
				return"common/errorPage";
			}
			
			return "redirect:/admin/member/grade";
		}
		
		//관리자 회원등급관리,토큰 조건 수정
				@PostMapping("/member/grade/infoEdit")
				public String memberGradeinfoEdit(MemberGradeVo vo,HttpServletRequest request) {
					
					if (!vo.isEmpty()) {
				    	  String rename=FileUploader.uploadMemberGrade(request, vo.getImgPath());
				    	  vo.setImgName(rename);
				    	  
				      }
					
					int result=memberService.memberGradeinfoEdit(vo);
				
					if(result==0) {
						return"common/errorPage";
					}
					
					return "redirect:/admin/member/grade";
				}
		
		//관리자 회원등급관리,토큰 조건 삭제
		@ResponseBody
		@PostMapping(value ="/member/grade/infoDelete",produces = "application/text;charset=utf8")
		public String memberGradeinfoDelete(String gradeNo) {
			System.out.println(gradeNo);

			int result=memberService.memberGradeinfoDelete(gradeNo);
			List<Map<String, String>> list=memberService.memberGrade();
			
			Gson gson = new Gson();
	        HashMap<String, Object> map = new HashMap<String, Object>();

	        map.put("list", list);

	        String jsonString = gson.toJson(map);
	        
	        return jsonString;
			
			
		}
		//관리자 회원 리스트에서 등급 수정
		@PostMapping("/member/gradeEdit")
		public String memberListGradeEdit(String[] checkNo,String accumToken,String pno) {
			
			Map<String, Object>map=new HashMap<String, Object>();
			map.put("no", checkNo);
			map.put("accumToken", accumToken);
			
			int result=memberService.memberListGradeEdit(map);
			if(result==0) {
				return "common/errorPage";
			}
			
			return "redirect:/admin/member/manage?pno="+pno+"&keyword=&category=nick&quitYn=&adminYn=";
			
		}
		
		
		
		//관리자 회원 리스트에서 탈퇴 
		@PostMapping("/member/listDelete")
		public String memberListMemberDelte(String[] checkNo,String pno) {
		
			
			int result=memberService.memberListMemberDelte(checkNo);
			if(result==0) {
				return "common/errorPage";
			}
			
			return "redirect:/admin/member/manage?pno="+pno+"&keyword=&category=nick&quitYn=&adminYn=";
			
		}


}
