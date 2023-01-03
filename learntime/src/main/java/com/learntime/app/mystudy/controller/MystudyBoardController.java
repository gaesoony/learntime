package com.learntime.app.mystudy.controller;

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

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.study.service.StudyService;

@RequestMapping("mystudy/board")
@Controller
public class MystudyBoardController {
	
	@Autowired
	private StudyService service;
	
	//게시판 템플릿 목록 화면
	@GetMapping("list")
	public String list(String pno, String ctno, String gno, HttpSession session, Model model) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map map = new HashMap();
		map.put("mno", loginMember.getNo());
		map.put("gno", gno);
		map.put("ctno", ctno);

		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);	
		
		//map으로 그룹에 대해서 status가 뭔지 select
		String myStatus = service.selectMyStatus(map);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		System.out.println(cateList);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		
		//게시판 게시글 조회
		List<Map<String, Object>> boardList = service.selectBoardList(map);
		
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("myStatus", myStatus);
		model.addAttribute("cateList", cateList);
		model.addAttribute("cateName", cateName);
		model.addAttribute("boardList", boardList);
		model.addAttribute("ctno", ctno);
		
		
		return "mystudy/board/list";
	}

	//게시판 템플릿 상세조회 화면
	@GetMapping("detail")
	public String detail(String pno, String ctno, String gno, String bno, Model model) {
		Map map = new HashMap();
		
		map.put("gno", gno);
		map.put("ctno", ctno);

		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		System.out.println(cateList);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		
		//게시판 상세 조회
		Map<String, Object> boardOne = service.selectBoardDetail(bno);
		
		//댓글 조회
		
		model.addAttribute("boardOne", boardOne);
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("cateList", cateList);
		model.addAttribute("cateName", cateName);
		model.addAttribute("ctno", ctno);
		
		return "mystudy/board/detail";
	}
	
	//게시판 템플릿 글작성 화면
	@GetMapping("write")
	public String write(String pno, String ctno, String gno, HttpSession session, Model model) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map map = new HashMap();
		map.put("mno", loginMember.getNo());
		map.put("gno", gno);
		map.put("ctno", ctno);
		System.out.println(map);
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);	
		
		//map으로 그룹에 대해서 status가 뭔지 select
		String myStatus = service.selectMyStatus(map);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		System.out.println(cateList);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		
		//게시판 게시글 조회
		List<Map<String, Object>> boardList = service.selectBoardList(map);
		
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("myStatus", myStatus);
		model.addAttribute("cateList", cateList);
		model.addAttribute("cateName", cateName);
		model.addAttribute("boardList", boardList);
		model.addAttribute("ctno", ctno);
		
		return "mystudy/board/write";
	}
	
	//스터디 게시판 게시글 작성
	@PostMapping("write")
	public String write(String ctno, String gno, HttpSession session, String title, String content) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map map = new HashMap();
		map.put("ctno", ctno);
		map.put("mno", loginMember.getNo());
		map.put("title", title);
		map.put("content", content);
		
		int result = service.boardWrite(map);
		
		if(result == 1) {
			return "redirect:/mystudy/board/list?pno=1&ctno="+ctno+"&gno="+gno;
		}else {
			return "common/errorPage";
		}
	}
	
	//게시판 템플릿 글수정 화면
	@GetMapping("edit")
	public String edit() {
		return "mystudy/board/edit";
	}

}
