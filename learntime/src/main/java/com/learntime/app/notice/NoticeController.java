package com.learntime.app.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.service.NoticeService;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;
import com.learntime.app.question.vo.QuestionVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class NoticeController {
	
	@Autowired
	private NoticeService ns;
	
	// 공지사항 리스트 화면
		@GetMapping("notice/noticeList")
		public String noticeList() {
			return "notice/noticeList";
			
		}
		@PostMapping("notice/noticeList")
		public String noticeList(NoticeVo vo,HttpServletRequest req, ModelAndView mv) {
			String category = req.getParameter("notice");
			String keyword = req.getParameter("search-input");
			String p = req.getParameter("p");

			int listCount = ns.selectCount();
			int currentPage = Integer.parseInt(p);
			int boardLimit = 10;
			int pageLimit = 5;
			PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
			
			


			Map<String,String> map = new HashMap<>();
			map.put("category",category);
			map.put("keyword",keyword);
			

			
			List<QuestionVo> list= ns.selectQuestionList(map,pv);

			mv.addObject("list",list);
			
			return "notice/noticeList";
			
		}
		
		// 공지사항 리스트 화면(운영자)
		@GetMapping("notice/noticeListAd")
		public String noticeListAd() {
			return "notice/noticeListAd";
			
	}
		// 공지사항 상세조회 화면
		@GetMapping("notice/noticeDetail")
		public String noticeDetail() {
			return "notice/noticeDetail";
			
		}
		
		// 공지사항 글쓰기 화면
		@GetMapping("notice/noticeWrite")
		public String noticeWrite(NoticeVo vo) {
			
			MemberVo loginMember = new MemberVo(); 
			String writer = loginMember.getNo();
			vo.setWriter(writer);
			int result = ns.noticeWrite(vo);
			log.debug("vo:"+vo);
			if(result == 1) {
				return "notice/noticeList";
			}else {
				return "common/errorPage";
			}
			
			
			
		}

}
