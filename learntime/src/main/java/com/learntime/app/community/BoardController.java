package com.learntime.app.community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardVo;

@RequestMapping("community")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;

	@GetMapping("/board/list")
	public String boardList() {
		return "/community/boardList";
	}
	
	@GetMapping("/board/detail")
	public String boardDetail() {
		return "/community/boardDetail";
	}
	
	
	
//	글쓰기
	@GetMapping("board/write")
	public String boardWrite() {
		return "/community/boardWrite";
	}
	
	@PostMapping("board/write")
	public String boardWrtie(BoardVo vo) {
		
		int result = bs.write(vo);
		System.out.println(result);
		
		return "community/board/list";
	}
	
	@GetMapping("board/modify")
	public String boardModify() {
		return "/community/boardModify";
	}
	
	@GetMapping("board/summer")
	public String summer() {
		return "/community/summernote";
	}
	
	//마이페이지 임시
	@GetMapping("mypage")
	public String myCommunity() {
		return "/member/mypage-community";
	}

}
