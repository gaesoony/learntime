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
import com.learntime.app.community.vo.CmtLHVo;
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

// 	글 목록 
	@GetMapping("/board/list")
	public String boardList(Model model, BoardFilterVo bfv) {
		
		//나중에 메소드로 분리  TODO
		System.out.println(bfv);
		if("1".equals(bfv.getSort())){
			bfv.setSort("ENROLL_DATE");
		}else if("2".equals(bfv.getSort())){
			bfv.setSort("CMT_COUNT");
		}else if("3".equals(bfv.getSort())){
			bfv.setSort("HIT");
		}else if("4".equals(bfv.getSort())){
			bfv.setSort("LH_COUNT");
		}
		
		if("0".equals(bfv.getCate())) {
			bfv.setCate(null);
		}
		
		List<BoardVo> boardList = bs.select(bfv);
		
		
		if (boardList == null) {
			return "common/error";
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
		
		System.out.println(lhsList.get(0));
		model.addAttribute("lhsList", lhsList);

		// 댓글조회
		List<CmtVo> cvList = null;
		
		if(loginMember != null) {
			//로그인 되어있을시 댓글 조회
			CmtVo cv = new CmtVo();
			cv.setBoardNo(bno);
			cv.setMNo(loginMember.getNo());
			
			cvList = bs.selectCmtList(cv);
		}else {
			//로그인이 안되어있을 시
			CmtVo cv = new CmtVo();
			cv.setBoardNo(bno);
			
			cvList = bs.selectCmtList(cv);
		}
		
		model.addAttribute("bv", bv);
		model.addAttribute("cvList", cvList);
		
		System.out.println(bv);
		System.out.println(cvList);
		
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
	
// 글삭제 서버
	@ResponseBody
	@PostMapping("/board/delete")
	public String boardDelete(String bno) {
		int result = bs.delete(bno);
		
		System.out.println(result);
		if(result != 1) {
			return "0";
		}
		return "1";
	}


// 댓글 쓰기
	@PostMapping(value = "comment/write", produces = "application/text;charset=utf8")
	@ResponseBody
	public String cmtWrite(@RequestParam("content") String content, @RequestParam("boardNo") String boardNo,
			@RequestParam("writer") String writer, @RequestParam("group") String group,  HttpServletResponse response, HttpSession session) {

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
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		CmtVo cv1 = new CmtVo();
		cv1.setBoardNo(boardNo);
		cv1.setMNo(loginMember.getNo());
		
		List<CmtVo> cvList = bs.selectCmtList(cv1);

		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("cvList", cvList);
		String jsonString = gson.toJson(map);

		return jsonString;

	}
	
	//댓글수정 서버
	public String cmtUpdate(@RequestParam("content") String content, @RequestParam("boardNo") String boardNo,
			@RequestParam("writer") String writer, @RequestParam("group") String group,  HttpServletResponse response) {
		
		
		// 댓글 조회
		CmtVo cv = new CmtVo();
		cv.setBoardNo(boardNo);
		
		List<CmtVo> cvList = bs.selectCmtList(cv);

		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("cvList", cvList);
		String jsonString = gson.toJson(map);

		return jsonString;
		
	}
	
	
	//댓글삭제 서버
	public String cmtDelete(@RequestParam("content") String content, @RequestParam("boardNo") String boardNo,
			@RequestParam("writer") String writer, @RequestParam("group") String group,  HttpServletResponse response) {
		
		// 댓글 조회
		CmtVo cv = new CmtVo();
		cv.setBoardNo(boardNo);
		
		List<CmtVo> cvList = bs.selectCmtList(cv);

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

	// 좋아요, 싫어요
	@PostMapping(value = "/board/like")
	@ResponseBody
	public String like( @RequestParam("boardNo") String boardNo,
						@RequestParam("userNo") String userNo,
						@RequestParam("status") String status,
						Model model) {
	
		System.out.println("왓나");
		
		LHSVo lhsVo = new LHSVo();
		LHSVo userLHS = new LHSVo();
		lhsVo.setBoardNo(boardNo);
		lhsVo.setUserNo(userNo);
		lhsVo.setStatus(status);
		
		System.out.println(lhsVo);
		
		userLHS = bs.selectUserLike(lhsVo);
		
		if (userLHS == null) {
			System.out.println("좋아요 인서트~");
	        bs.insertUserLike(lhsVo);
	    } else if (status.equals(userLHS.getStatus())) {
	    	System.out.println("좋아요 딜리트~");
	        bs.deleteUserLike(lhsVo);
	    } else {
	    	System.out.println("좋아요 업데이트~");
	        bs.updateUserLike(lhsVo);
	    }
		
			
		//넘겨줘야 할것...(조회 해야 할 것) 
		// 1. 유저의 this.글 좋아요 status 넘겨주기
		userLHS = bs.selectUserLike(lhsVo);
		model.addAttribute("userLHS", userLHS);
		
		// 2. 이 글의 좋아요 싫어요수 조회해서 넘겨주기
		BoardVo bv = bs.selectOne(boardNo);
		String lhCount = bv.getLhCount();
		
		//좋아요 숫자 조회해서 넘겨주기
		return lhCount;
	}
	
	// 좋아요, 싫어요
		@PostMapping(value = "/cmt/like")
		@ResponseBody
		public String cmtLike( @RequestParam("no") String no,
							@RequestParam("userNo") String writer,
							@RequestParam("status") String status,
							Model model) {
		
			CmtLHVo cmtLHVo = new CmtLHVo();
			CmtLHVo userLH = new CmtLHVo();
			cmtLHVo.setCmtNo(no);
			cmtLHVo.setWriter(writer);
			cmtLHVo.setStatus(status);
			
			System.out.println(cmtLHVo);
			
			// 이 유저의 이글 댓글  좋아요 싫어요 데이터가 있는지 조회
			userLH = bs.selectUserLike(cmtLHVo);

			if (userLH == null) {
				System.out.println("좋아요 인서트~");
		        bs.insertUserLike(cmtLHVo);
		    } else if (status.equals(userLH.getStatus())) {
		    	System.out.println("좋아요 딜리트~");
		        bs.deleteUserLike(cmtLHVo);
		    } else {
		    	System.out.println("좋아요 업데이트~");
		        bs.updateUserLike(cmtLHVo);
		    }
			
				
			//넘겨줘야 할것...(조회 해야 할 것) 
			// 1. 유저의 this.글 좋아요 status 넘겨주기
			userLH = bs.selectUserLike(cmtLHVo);
			model.addAttribute("userLH", userLH);
			
			// 2. 이 글의 좋아요 싫어요수 조회해서 넘겨주기
			BoardVo bv = bs.selectOne(no);
			String lhCount = bv.getLhCount();
			
			//좋아요 숫자 조회해서 넘겨주기
			return lhCount;
		}
	
	

}
