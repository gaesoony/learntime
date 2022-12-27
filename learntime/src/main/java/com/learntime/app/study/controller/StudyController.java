package com.learntime.app.study.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.member.vo.MemberVo;

import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("study")
@Slf4j
public class StudyController {
	
	@Autowired
	private StudyService service;
	
	//스터디/프로젝트 디폴트 목록 조회 (화면 + DB)
//	@GetMapping("/list")
//	public String list(Model model, HttpSession session) {
//		
//		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
//		log.info("로그인멤버 : " + loginMember);
//		//내가 가입한 모임 select (모임번호, 이름, 프사)
//		if(loginMember != null) {			
//			List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
//			model.addAttribute("myGroupList", myGroupList);		
//			
//		}else {
//			model.addAttribute("myGroupList", null);
//		}
//		
//		//인기 태그 select
//		List<Map<String, String>> popularTagList = service.selectPopularTagList();
//		model.addAttribute("popularTagList", popularTagList);
//		
//		//인기 기술스택 select
//		List<Map<String, String>> popularTechStackList = service.selectPopularTechStackList();
//		model.addAttribute("popularTechStackList", popularTechStackList);
//		
//		//keyword : 검색어
//		String keyword = null;
//		
//		//tag : 태그
//		String[] tag = null;
//		
//		//techStack : 기술스택
//		String[] techStack = null;
//		
//		//type : 스터디+프로젝트
//		String type = "전체";
//		
//		//status : 모집중만 보기
//		String status = "unrecruited";
//		
//		//order : 최신순
//		String order = "recent";
//		
//		
//		Map map = new HashMap<String, String>();
//		SearchVo vo = new SearchVo();
//		vo.setKeyword(keyword);
//		vo.setTag(tag);
//		vo.setTechStack(techStack);
//		vo.setType(type);
//		vo.setStatus(status);
//		vo.setOrder(order);
//		
//		log.info("디폴트값 : " + map);
//		
//		//전체 모임 정보 select (디폴트 : 최신순 + 전체 스터디/프로젝트 + 모집중만 조회)
//		List<Map<String, Object>> groupList = service.selectGroupList(vo);
//
//		model.addAttribute("groupList", groupList);
//		
//		return "study/list";
//	}
	
	//스터디/프로젝트 검색 목록 조회 (DB)
	@GetMapping("/list")
	public String list(SearchVo vo, Model model, HttpSession session) {
		
		if(vo.getKeyword() == null) {
			vo.setKeyword("");
		}
		
		if(vo.getType() == null) {
			vo.setType("전체");
		}
		
		if(vo.getOrder() == null) {
			vo.setOrder("recent");
		}
		
		if(vo.getStatus() == null) {
			vo.setStatus("close");
		}
		
		if(vo.getTechType() == null) {
			vo.setTechType("popular");
		}	
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		
		log.info("로그인멤버 : " + loginMember);
		
		//내가 가입한 모임 select (모임번호, 이름, 프사)
		if(loginMember != null) {			
			List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
			model.addAttribute("myGroupList", myGroupList);		
			
		}else {
			model.addAttribute("myGroupList", null);
		}
		
		//인기 태그 select
		List<Map<String, String>> popularTagList = service.selectPopularTagList();
		model.addAttribute("popularTagList", popularTagList);
		
		//인기 기술스택 select
		List<Map<String, String>> popularTechStackList = service.selectPopularTechStackList();
		model.addAttribute("popularTechStackList", popularTechStackList);
		
		//받아야하는 값 : 검색어 + 태그리스트 + 기술스택리스트 + 스터디or프로젝트 + 모집중or모집완료 + 정렬
		
		log.info("SearchVo : " + vo);
		//log.info("화면으로부터 받은 값 : " + map);
		
		//전체 모임 정보 select
		List<Map<String, Object>> groupList = service.selectGroupList(vo);
		
		//log.info("그룹정보 : " + groupList);
		
		if(vo.getKeyword().trim().equals("")) {
			model.addAttribute("keyword", null);
		}else {
			model.addAttribute("keyword", vo.getKeyword());
		}
		
		model.addAttribute("techStack", vo.getTechStack());
		model.addAttribute("status", vo.getStatus());
		model.addAttribute("type", vo.getType());
		model.addAttribute("techType", vo.getTechType());
		model.addAttribute("order", vo.getOrder());
		model.addAttribute("groupList", groupList);
		model.addAttribute("tagList", vo.getTag());
		model.addAttribute("techStackList", vo.getTechStack());

		return "study/list";
	}
	

	//스터디/프로젝트 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail(SearchVo vo, Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		System.out.println(vo);
		
		Map map = new HashMap();
		map.put("gno", vo.getGno());
		
		if(loginMember != null) {
			map.put("mno", loginMember.getNo());			
		}
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(vo.getGno());
		
		Map<String, Object> likeScrap = null;
		if(loginMember != null) {
			likeScrap = service.selectLikeScrap(map);
			model.addAttribute("likeScrap", likeScrap);
		}

		model.addAttribute("searchVo", vo);
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("likeScrap", likeScrap);
		System.out.println(groupOne);
		System.out.println(loginMember);
		System.out.println(likeScrap);
		
		
		return "study/detail";
	}
	
	//스터디/프로젝트 모집 (화면 + DB select)
	@GetMapping("/recruit")
	public String recruit(Model model) {
		
		//모집 구분 select
		List<Map<String, String>> groupTypeList = service.selectGroupTypeList();
		model.addAttribute("groupTypeList", groupTypeList);
		
		//진행 기간 select
		List<Map<String, String>> groupPeriodList = service.selectGroupPeriodList();
		model.addAttribute("groupPeriodList", groupPeriodList);
		
		//기술 스택 select
		List<Map<String, String>> techStackList = service.selectTechStackList();
		model.addAttribute("techStackList", techStackList);

		
		System.out.println("그룹타입리스트:"+groupTypeList);
		return "study/recruit";
	}
	
	//스터디/프로젝트 모집 (DB insert)
	@PostMapping("/recruit")
	public String recruit(GroupVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		vo.setWriterNick(loginMember.getNick());
		
		System.out.println(vo);
		
		int result = service.recruit(vo);
		if(result >= 1) {
			return "redirect:/study/list";
		}else {
			return "common/errorPage";
		}

	}
	
	//스터디/프로젝트 수정 (DB)
	@GetMapping("/edit")
	public String edit() {
		return "redirect:/study/edit";
	}
	
	//스터디/프로젝트 삭제 (DB)
	@GetMapping("/delete")
	public String delete() {
		return "redirect:/study/detail";
	}
	
//	//모집중 또는 모집완료 업데이트
//	@GetMapping("/openClose")
//	@ResponseBody
//	public String openClose(String gno) {
//		
//	}
//	
//	//스크랩 또는 스크랩취소 업데이트
//	@GetMapping("/scrap")
//	@ResponseBody
//	public String scrap(String gno) {
//		
//	}
	
	//싫어요 또는 싫어요 취소
	
	//좋아요 또는 좋아요 취소
}
