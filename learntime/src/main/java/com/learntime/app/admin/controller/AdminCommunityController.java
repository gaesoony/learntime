package com.learntime.app.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardFilterVo;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.community.vo.CateVo;
import com.learntime.app.community.vo.CmtVo;

@Controller
@RequestMapping("admin/community")
public class AdminCommunityController {
	
	@Autowired
	public BoardService bs;
	
	
	@GetMapping("/list")
	public String adminCommunity(Model model, BoardFilterVo bfv, String pno) {
		
		if(pno == null) {
			pno = "1";
		}
		
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
		
		//페이징
		int listCount = bs.boardCnt(bfv);
		int currentPage = Integer.parseInt(pno);
		int pageLimit = 10;
		int boardLimit = 20;
	       
        PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
        bfv.setListCount(listCount);
        bfv.setCurrentPage(currentPage);
        bfv.setPageLimit(pageLimit);
        bfv.setBoardLimit(boardLimit);
        bfv.setMaxPage(pv.getMaxPage());
        bfv.setCurrentPage(pv.getCurrentPage());
        bfv.setPageLimit(pv.getPageLimit());
        bfv.setBoardLimit(pv.getBoardLimit());
        bfv.setStartPage(pv.getStartPage());
        bfv.setEndPage(pv.getEndPage());
		
		//카테고리 조회
		List<CateVo> cateList =  bs.selectCate();
		
		//게시글 조회
		List<BoardVo> boardList = bs.select(bfv);
		
		model.addAttribute("cateList", cateList);
		model.addAttribute("boardList", boardList);
		model.addAttribute("bfv", bfv);
		
		return "/admin/community/adminCommunity";
	}
	
	//카테고리 추가
	@PostMapping(value = "/addcate", produces = "application/text;charset=utf8")
	@ResponseBody
	public String addCategory(Model model, 
							  @RequestParam("cateName") String cateName) {
		
		System.out.println(cateName);
		
		//카테고리 추가
		int result = bs.insertCate(cateName);
	
		//실패시 리턴
		if (result != 1) {
			return "";
		}
		
		//카테고리 조회
		List<CateVo> cateList = bs.selectCate();
		
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("cateList", cateList);
		String jsonString = gson.toJson(map);
		
		return jsonString;
	}
	
	@GetMapping("/detail")
	public String adminCommunityDetail(@RequestParam("bno") String boardNo, Model model) {
		//글리스트
		model.addAttribute("bv", bs.selectOne(boardNo));
		//코멘트 리스트
		
		CmtVo cv = new CmtVo();
		cv.setBoardNo(boardNo);
		model.addAttribute("cvList", bs.selectCmtList(cv));
		System.out.println(bs.selectCmtList(cv));
		
		return "/admin/community/adminCommunityDetail";
	}
	
	@GetMapping("/modify")
	public String adminCommunityModify(@RequestParam("bno") String boardNo, Model model) {
		//카테고리 받아오기
		model.addAttribute("cateList", bs.selectCate());
		System.out.println(bs.selectCate());
		
		//글리스트
		model.addAttribute("bv", bs.selectOne(boardNo));
		
		
		return "/admin/community/adminCommunityModify";
	}
	
	//글 수정
	@PostMapping("/modify")
	public String adminCommunityModify(BoardVo bv) {
		int result = bs.modify(bv);
		if(result != 1) {
			return "common/errorPage";
		}
		return "redirect:/admin/community/detail?bno="+bv.getNo();
	}

}
