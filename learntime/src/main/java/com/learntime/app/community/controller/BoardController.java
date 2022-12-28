package com.learntime.app.community.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;
import com.learntime.app.community.vo.LHSVo;
import com.learntime.app.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class BoardController {

	@Autowired
	private BoardService bs;

// 	글 목록 (카테고리 있을때)
	@GetMapping("/board/list")
	public String boardList(Model model, BoardFilterVo bfv) {

		System.out.println(bfv.getCate());
		System.out.println(bfv.getPage());
		System.out.println(bfv.getSort());
		System.out.println(bfv.getSearch());
		
		List<BoardVo> boardList = bs.select(bfv);

		if (boardList == null) {
			return "";
		}

		// 카테고리 받아오기
		List<CateVo> cateList = bs.selectCate();

		model.addAttribute("cateList", cateList);
		model.addAttribute("boardList", boardList);

		return "/community/boardList";
	}
	
//	글 상세조회	
	@GetMapping("/board/detail")
	public String boardDetail(@RequestParam String bno, Model model, HttpSession session) {

		// 글 조회
		BoardVo bv = bs.selectOne(bno);

		if (bv == null) {
			return "";
		}

		// 로그인 되어있을 시 스크랩, 좋아요 조회
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		List<LHSVo> lhsList = null;

		if (loginMember != null) {
			// 스크랩, 좋아요 조회
			LHSVo lhs = new LHSVo();
			lhs.setBoardNo(bno);
			lhs.setUserNo(loginMember.getNo());
			lhsList = bs.selectLHS(lhs);
		}

		if (lhsList == null || lhsList.isEmpty()) {
			lhsList = new ArrayList<>();
			LHSVo lhs = new LHSVo();
			lhs.setScrap("false");
			lhs.setStatus("false");
			lhsList.add(lhs);
		}
		
		model.addAttribute("lhsList", lhsList);

		// 댓글조회
		List<CmtVo> cvList = bs.selectCmtList(bno);

		model.addAttribute("bv", bv);
		model.addAttribute("cvList", cvList);
		
		return "/community/boardDetail";
	}

//	글쓰기 화면
	@GetMapping("board/write")
	public String boardWrite(HttpSession session, Model model) {

		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");

		if (loginMember == null) {
			return "/member/login";
		}

		// 카테고리 받아오기
		List<CateVo> cateList = bs.selectCate();

		model.addAttribute("cateList", cateList);

		return "/community/boardWrite";
	}

//  글쓰기 서버
	@PostMapping("board/write")
	public String boardWrtie(HttpSession session, BoardVo vo) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		
		int result = bs.write(vo);
		
		if(result != 1) {
			return "error";
		}
		return "redirect:/community/board/list";
	}

// 글수정 화면
	@GetMapping("board/modify")
	public String boardModify(@RequestParam("bno") String boardNo, Model model) {
		
		// 카테고리 받아오기
		List<CateVo> cateList = bs.selectCate();
		model.addAttribute("cateList", cateList);
		
		//글번호 받아와서 글 정보조회
		BoardVo bv = bs.selectOne(boardNo);
		model.addAttribute("bv", bv);
		
		return "/community/boardModify";
	}
	
// 글수정 서버
	@PostMapping("board/modify")
	public String boardModify(BoardVo vo) {
		
		int result = bs.modify(vo);
		
		if(result != 1) {
			return "error";
		}
		
		return "redirect:/community/board/detail?bno="+vo.getNo();
	}

	
// 마이페이지 임시
	@GetMapping("/mypage")
	public String myCommunity(HttpSession session, Model model) {
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		String userNo = loginMember.getNo();
		
		//나의 글 조회
		List<BoardVo> myList = bs.selecMyList(userNo);
		model.addAttribute("myList", myList);
		
		//나의 스크랩 글 조회
		List<BoardVo> scrapList = bs.selectScrapList(userNo);
		model.addAttribute("scrapList", scrapList);
		
		return "/member/mypage-community";
	}

// 댓글 쓰기
	@PostMapping(value = "comment/write", produces = "application/text;charset=utf8")
	@ResponseBody
	public String cmtWrite(@RequestParam("content") String content, @RequestParam("boardNo") String boardNo,
			@RequestParam("writer") String writer, @RequestParam("group") String group,  HttpServletResponse response) {

		// 인코딩
		response.setContentType("text/html;charset=UTF-8");

		// 댓글 작성

		CmtVo cv = new CmtVo();

		cv.setBoardNo(boardNo);
		cv.setContent(content);
		cv.setWriter(writer);
		if(group != null) {
			cv.setGroup(group);
		}

		int result = bs.insertCmt(cv);

		if (result != 1) {
			return "error";
		}

		// 댓글 조회
		List<CmtVo> cvList = bs.selectCmtList(boardNo);

		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("cvList", cvList);
		String jsonString = gson.toJson(map);

		return jsonString;

	}

	// 스크랩하기
	@PostMapping(value = "/scrap")
	@ResponseBody
	public String scrap(@RequestParam("boardNo") String boardNo, 
						@RequestParam("userNo") String userNo,
						Model model) {
		
		LHSVo lhs = new LHSVo();
		lhs.setBoardNo(boardNo);
		lhs.setUserNo(userNo);
		
		//스크랩 조회
		int result = 0;
		LHSVo scrap = bs.selectScrap(lhs);
		
		if(scrap == null) {
			result = bs.insertScrap(lhs);
		}else {
			result = bs.deleteScrap(lhs);
		}
		
		if(result != 1) {
			return "";
		}
		
		//스크랩 다시 조회해서 넣어주기
		List<LHSVo> lhsList = null;
		lhsList = bs.selectLHS(lhs);
		
		model.addAttribute("lhsList", lhsList);
		
		return "";
	}


}
