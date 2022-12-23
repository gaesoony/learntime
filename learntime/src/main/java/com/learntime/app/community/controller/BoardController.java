package com.learntime.app.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.member.service.MemberService;
import com.learntime.app.member.vo.MemberVo;

@RequestMapping("community")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	@Autowired
	private MemberService memberService;

	
// 	글 목록 TODO
	@GetMapping("/board/list")
	public String boardList(Model model) {
		
		List<BoardVo> boardList = bs.select();
		
		if(boardList == null) {
			return "";
		}
		
		System.out.println(boardList);
		
		model.addAttribute("boardList", boardList);
		
		return "/community/boardList";
	}
	
//	글 상세조회	
	@GetMapping("/board/detail")
	public String boardDetail(@RequestParam String bno, Model model) {
		
		//글 조회
		BoardVo bv = bs.selectOne(bno);
		
		if(bv == null) {
			return "";
		}
		
		
		//댓글 조회 TODO
//		List<CmtVo> cvList = bs.selectCmtList(bno);
		
		System.out.println(bv);
		
		model.addAttribute("bv", bv);
		
		return "/community/boardDetail";
	}
	
	
//	글쓰기 TODO
	@GetMapping("board/write")
	public String boardWrite(HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		if(loginMember == null) {
			return "/member/login";
		}
		
		return "/community/boardWrite";
	}
	
	@PostMapping("board/write")
	public String boardWrtie(BoardVo vo) {
		
		System.out.println("컨트롤러vo : " + vo );
		
		int result = bs.write(vo);
		System.out.println(result);
		
		return "redirect:/community/board/list";
	}
	
// 글수정 TODO
	@GetMapping("board/modify")
	public String boardModify() {
		return "/community/boardModify";
	}
	
	
	//마이페이지 임시
	@GetMapping("mypage")
	public String myCommunity() {
		return "/member/mypage-community";
	}
	
// 댓글 쓰기 TODO
	@PostMapping("comment/write")
	public String cmtWrite() {
		
		//댓글쓰기
		
		
		return "redirect:/community/board/detail";
	}
	
}
