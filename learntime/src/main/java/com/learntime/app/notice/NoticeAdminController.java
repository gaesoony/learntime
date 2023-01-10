package com.learntime.app.notice;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.notice.service.AdminNoticeService;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.Pagination;

@RequestMapping("admin/notice")
@Controller
public class NoticeAdminController {
	
	@Autowired
	private AdminNoticeService ans;
	
	// 공지사항 리스트 화면
		@GetMapping("noticeListAdmin")
		public String noticeListAdmin(NoticeVo vo, Model m,PageVo pv) {
			

			int listCount = ans.selectCount();
			int currentPage = (int)pv.getP();
			int boardLimit = 6;
			int pageLimit = 5;
			pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
			
			int cateNo = vo.getCateNo();
			int cmtCnt = ans.cmtCnt();
			int hit = ans.updateHit(vo);
			vo.setHit(hit);
			
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("vo",vo);
			map.put("pv",pv);
			System.out.println(pv);

			List<NoticeVo> list= null;
			if(vo.getCateNo()==0 )  {
				
				list= ans.selectNoticeListAll(map);
				
				
			}else {
				
				list= ans.selectNoticeList(map);
				
				
				
			}
			
			
			m.addAttribute("list",list);
			m.addAttribute("p",pv.getP());
			m.addAttribute("cateNo",vo.getCateNo());
			m.addAttribute("pv",pv);
			m.addAttribute("category",vo.getCategory());
			m.addAttribute("keyword",vo.getKeyword());
		
			
		
			
			
			return "admin/notice/noticeListAdmin";
			
		}
		
		@PostMapping("noticeListAdmin")
		@ResponseBody
		public String noticeListAdmin(HttpServletRequest req,NoticeVo vo,String activate,String deactivate,String deleteList, @RequestParam(value="valueArr[]") List<Integer> valueArr) {
			
			List<Integer> list = new ArrayList<Integer>();
			for(int i = 0; i<valueArr.size(); i++) {
				list.add(valueArr.get(i));
			}
			
			
			int result = 0;
			int result2 = 0;
			
			if("활성화".equals(activate)) {
				result = ans.activate(list);
			}else if("비활성화".equals(deactivate)) {
				result2 = ans.deactivate(list);
				
			}
			
			
			return "admin/notice/noticeListAdmin";
			
		}
		@GetMapping("")
		@ResponseBody
		public String delete(List<Integer> valueArr) {
			
			List<Integer> list = new ArrayList<Integer>();
			for(int i = 0; i<valueArr.size(); i++) {
				list.add(valueArr.get(i));
			}
			
			int result = ans.deleteOne(list);
			if(result == 1) {
				return "admin/notice/noticeListAdmin"; 
			}else {
				return "common/errorPage";
			}
		}
		
		// 공지사항 상세조회 화면
		@GetMapping("noticeDetailAdmin")
		public String noticeDetailAdmin(NoticeVo vo, HttpSession session, Model m) {
			
			ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager"); 
			int cmtCnt = ans.cmtCnt();
			int hit = ans.updateHit(vo);
			vo.setHit(hit);
			vo.setCmt(cmtCnt);
			if(loginManager !=null) {
				vo = ans.selectOne(vo);
				m.addAttribute("vo",vo);
				return "admin/notice/noticeDetailAdmin";
			}else {
				return "common/errorPage";
			}
			
			
			
		}

		// 공지사항 수정페이지
		@GetMapping("noticeDetailAdminModify")
		public String noticeDetailAdmiModify() {
			return "admin/notice/noticeDetailAdminModify";
			
		}
		//팝업
		@GetMapping("noticePopUpAdmin")
		public String noticePopUpAdmin() {
			return "admin/notice/noticePopUpAdmin";
		}
		
		

}
