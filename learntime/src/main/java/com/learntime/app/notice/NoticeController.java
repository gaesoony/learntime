package com.learntime.app.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		public String noticeList(@RequestParam ("cateNo")int cateNo ,NoticeVo vo,HttpServletRequest req, Model mv) {
			System.out.println(cateNo);
			String category = req.getParameter("notice");
			String keyword = req.getParameter("search-input");
			String p = req.getParameter("p");

			int listCount = ns.selectCount();
			int currentPage = Integer.parseInt(p);
			int boardLimit = 10;
			int pageLimit = 5;
			PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
			
			int cmtCnt = ns.cmtCnt();
			int hit = ns.updateHit(vo);
			vo.setHit(hit);

//			Map<String,Object> map = new HashMap<>();
//			map.put("category",category);
//			map.put("keyword",keyword);
//			map.put("cmt", cmtCnt);
			
			List<NoticeVo> list= null;
			if(cateNo==0)  {
				
				list= ns.selectNoticeListAll(vo,pv);
			}else {
				vo.setCateNo(cateNo);
				list= ns.selectNoticeList(vo,pv);
				
			}
			
			

			mv.addAttribute("list",list);
			
			System.out.println(list);
			
			return "notice/noticeList";
			
			
		}
		@PostMapping("notice/noticeList")
		public String noticeList() {
			return "notice/noticeList";
			
		}
		
		// 공지사항 리스트 화면(운영자)
		@GetMapping("notice/noticeListAd")
		public String noticeListAd() {
			return "notice/noticeListAd";
			
	}
		// 공지사항 상세조회 화면
		@GetMapping("notice/noticeDetail")
		public String noticeDetail(NoticeVo vo, HttpSession session, Model m) {
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
			int cmtCnt = ns.cmtCnt();
			int hit = ns.updateHit(vo);
			vo.setHit(hit);
			vo.setCmt(cmtCnt);
			if(loginMember !=null) {
				vo = ns.selectOne(vo);
				m.addAttribute("vo",vo);
				return "notice/noticeDetail";
			}else {
				return "common/errorPage";
			}
			
			
			
		}
		
		// 공지사항 글쓰기 화면
		
		@GetMapping("notice/noticeWrite")
		public String  noticeWrite() {
			return  "notice/noticeWrite";
		}
		
		@PostMapping("notice/noticeWrite")
		public String noticeWrite(NoticeVo vo, HttpSession session ) {
			
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
			String writer = loginMember.getNo();
			vo.setWriter(writer);
			int result = ns.noticeWrite(vo);
			log.info("vo:"+vo);
			if(result == 1) {
				return "redirect:/notice/noticeList?p=1&cateNo=1";
			}else {
				return "common/errorPage";
			}
		}
}