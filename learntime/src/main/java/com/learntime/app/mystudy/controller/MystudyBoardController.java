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

import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.SearchVo;

@RequestMapping("mystudy/board")
@Controller
public class MystudyBoardController {
	
	@Autowired
	private StudyService service;
	
	//게시판 템플릿 목록 화면
	@GetMapping("list")
	public String list(String pno, String ctno, String gno, HttpSession session, Model model, String keyword, String status) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map map = new HashMap();
		map.put("mno", loginMember.getNo());
		map.put("gno", gno);
		map.put("ctno", ctno);
		map.put("keyword", keyword);
		map.put("status", status);
		
        int listCount = service.selectBoardCnt(map);
        int currentPage = Integer.parseInt(pno);
        int pageLimit = 5;
        int boardLimit = 10;
       
        PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
        map.put("pv", pv);
        model.addAttribute("pv", pv);

		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		model.addAttribute("myGroupList", myGroupList);	
		
		//map으로 그룹에 대해서 status가 뭔지 select
		String myStatus = service.selectMyStatus(map);
		model.addAttribute("myStatus", myStatus);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		model.addAttribute("cateList", cateList);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		model.addAttribute("cateName", cateName);
		
		//게시판 게시글 조회
		List<Map<String, Object>> boardList = service.selectBoardList(map);
		model.addAttribute("boardList", boardList);
		
		//카테고리 번호
		model.addAttribute("ctno", ctno);
		
		//페이징
		model.addAttribute("pno", pno);
		
		//검색
		model.addAttribute("keyword", keyword);
		model.addAttribute("status", status);
		
		return "mystudy/board/list";
	}

	//게시판 템플릿 상세조회 화면
	@GetMapping("detail")
	public String detail(String pno, String ctno, String gno, String bno, Model model) {
		Map map = new HashMap();
		
		map.put("gno", gno);
		map.put("ctno", ctno);
		map.put("bno", bno);
		
		System.out.println(map);

		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		model.addAttribute("groupOne", groupOne);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		model.addAttribute("cateList", cateList);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		model.addAttribute("cateName", cateName);
		
		//게시판 상세 조회
		Map<String, Object> boardOne = service.selectBoardDetail(bno);
		model.addAttribute("boardOne", boardOne);
		
		//조회수 업데이트
		int updateHit = service.updateBoardHit(bno);
		
		//댓글 조회
		List<Map<String, Object>> groupCmtList = service.selectGroupBoardCmtList(map);
		System.out.println(groupCmtList);
		model.addAttribute("groupCmtList", groupCmtList);
		
		//카테고리 번호
		model.addAttribute("ctno", ctno);
		model.addAttribute("bno", bno);
		
		return "mystudy/board/detail";
	}
	
	@PostMapping("detail/writeCmt")
	public String writeCmt(String ctno, String gno, String bno, String mno, String cmt) {
		
		Map map = new HashMap();
		map.put("gno", gno);
		map.put("mno", mno);
		map.put("cmt", cmt);
		map.put("bno", bno);
		
		int result = service.boardWriteCmt(map);
		
		if(result == 1) {
			return "redirect:/mystudy/board/detail?ctno="+ctno+"&gno="+gno+"&bno="+bno;
		}else {
			return "common/errorPage";
		}
		
	}
	
	//대댓글달기
	@PostMapping("/detail/writeCmtReply")
	public String writeCmt(String ctno, String gno, String bno, String mno, String cmt, String group) {
		
		Map map = new HashMap();
		map.put("gno", gno);
		map.put("bno", bno);
		map.put("mno", mno);
		map.put("cmt", cmt);
		map.put("group", group);
		
		int result = service.boardWriteCmt(map);
		
		if(result == 1) {
			return "redirect:/mystudy/board/detail?ctno="+ctno+"&gno="+gno+"&bno="+bno;
		}else {
			return "common/errorPage";
		}
		
	}
	
	//게시판 템플릿 글작성 화면
	@GetMapping("write")
	public String write(String pno, String ctno, String gno, String bno, HttpSession session, Model model) {
		
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
		
		//map으로 그룹에 대해서 status가 뭔지 select
		String myStatus = service.selectMyStatus(map);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("myGroupList", myGroupList);	
		model.addAttribute("myStatus", myStatus);
		model.addAttribute("cateList", cateList);
		model.addAttribute("cateName", cateName);
		model.addAttribute("ctno", ctno);
		model.addAttribute("bno", bno);
		
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
			session.setAttribute("alertMsg", "게시글 작성 완료");
			return "redirect:/mystudy/board/list?pno=1&ctno="+ctno+"&gno="+gno;
		}else {
			return "common/errorPage";
		}
	}
	
	//게시판 템플릿 글수정 화면
	@GetMapping("edit")
	public String edit(String pno, String ctno, String gno, String bno, HttpSession session, Model model) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map map = new HashMap();
		map.put("mno", loginMember.getNo());
		map.put("gno", gno);
		map.put("ctno", ctno);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(gno);
		
		//내가 가입한 스터디 리스트 select
		List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
		
		//map으로 그룹에 대해서 status가 뭔지 select
		String myStatus = service.selectMyStatus(map);
		
		//게시판 카테고리 리스트 select
		List<Map<String, Object>> cateList = service.selectCateList(map);
		
		//게시판 이름 조회
		String cateName = service.selectCateName(map);
		
		//게시판 상세 조회
		Map<String, Object> boardOne = service.selectBoardDetail(bno);
		model.addAttribute("boardOne", boardOne);
		
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("myGroupList", myGroupList);	
		model.addAttribute("myStatus", myStatus);
		model.addAttribute("cateList", cateList);
		model.addAttribute("cateName", cateName);
		model.addAttribute("ctno", ctno);
		model.addAttribute("bno", bno);
		
		return "mystudy/board/edit";
	}
	
	//게시판 템플릿 글수정 화면
	@PostMapping("edit")
	public String edit(String ctno, String gno, String bno,  HttpSession session, String title, String content) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map map = new HashMap();
		map.put("ctno", ctno);
		map.put("mno", loginMember.getNo());
		map.put("title", title);
		map.put("content", content);
		map.put("bno", bno);
		
		int result = service.boardEdit(map);

		if(result == 1) {
			session.setAttribute("alertMsg", "게시글 수정 완료");
			return "redirect:/mystudy/board/detail?pno=1&ctno="+ctno+"&gno="+gno+"&bno="+bno;
		}else {
			return "common/errorPage";
		}
		
	}
	
	@GetMapping("delete")
	public String delete(String ctno, String gno, String bno, HttpSession session) {
		
		int result = service.boardDelete(bno);
		
		if(result == 1) {
			session.setAttribute("alertMsg", "게시글이 삭제되었습니다");
			return "redirect:/mystudy/board/list?pno=1&ctno="+ctno+"&gno="+gno;
		}else {
			return "common/errorPage";
		}
	}

}
