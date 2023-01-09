package com.learntime.app.admin.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.admin.service.AdminDashboardService;
import com.learntime.app.admin.service.ManagerService;
import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.common.file.FileUploader;
import com.learntime.app.common.page.PageVo;
import com.learntime.app.common.page.Pagination;
import com.learntime.app.community.service.BoardService;
import com.learntime.app.community.vo.BoardVo;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.makegrass.service.MakegrassService;
import com.learntime.app.member.service.MemberService;
import com.learntime.app.mertoring.service.MentoringService;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mystudy.vo.ProfileVo;
import com.learntime.app.notice.service.AdminNoticeService;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.qna.service.QnaService;
import com.learntime.app.question.vo.QuestionVo;
import com.learntime.app.study.service.StudyService;

@RequestMapping("admin/dashboard")
@Controller
public class AdminDashboardController {
	
	@Autowired
	@Qualifier("managerServiceImpl")
	private ManagerService managerService;
	
	@Autowired
	@Qualifier("studyServiceImpl")
	private StudyService studyService;
	
	@Autowired
	@Qualifier("makegrassServiceImpl")
	private MakegrassService makegrassService;
	
	@Autowired
	@Qualifier("mentoringServiceImpl")
	private MentoringService mentoringService;
	
	@Autowired
	@Qualifier("qnaServiceImpl")
	private QnaService qnaService;
	
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;

	@Autowired
	@Qualifier("adminNoticeServiceImpl")
	private AdminNoticeService adminNoticeService;
	
	@Autowired
	@Qualifier("adminDashboardServiceImpl")
	private AdminDashboardService adminDashboardService;
	
	
	
	//관리자페이지 대시보드 조회 (화면)
	@GetMapping("")
	public String dashboard(Model model) {
		
		Map map = new HashMap<String, Object>();
		map.put("status", "0"); //오늘
		
		//오늘 페이지뷰 조회
		int todayPageViewCnt = adminDashboardService.selectPageViewCnt(map);
		model.addAttribute("todayPageViewCnt", todayPageViewCnt);
		
		//오늘 방문자수 조회
		int todayVisitorCnt = adminDashboardService.selectVisitorCnt(map);
		model.addAttribute("todayVisitorCnt", todayVisitorCnt);
		
		//오늘 가입자수 조회
		int todayJoinCnt = adminDashboardService.selectJoinCnt(map);
		model.addAttribute("todayJoinCnt", todayJoinCnt);
		
		//오늘 탈퇴자수 조회
		int todayQuitCnt = adminDashboardService.selectQuitCnt(map);
		model.addAttribute("todayQuitCnt", todayQuitCnt);
		
		map.put("status", "1"); //어제
		
		//어제 페이지뷰 조회
		int yesterdayPageViewCnt = adminDashboardService.selectPageViewCnt(map);
		model.addAttribute("yesterdayPageViewCnt", yesterdayPageViewCnt);
		
		//어제 방문자수 조회
		int yesterdayVisitorCnt = adminDashboardService.selectVisitorCnt(map);
		model.addAttribute("yesterdayVisitorCnt", yesterdayVisitorCnt);
		
		//어제 가입자수 조회
		int yesterdayJoinCnt = adminDashboardService.selectJoinCnt(map);
		model.addAttribute("yesterdayJoinCnt", yesterdayJoinCnt);
		
		//어제 탈퇴자수 조회
		int yesterdayQuitCnt = adminDashboardService.selectQuitCnt(map);
		model.addAttribute("yesterdayQuitCnt", yesterdayQuitCnt);
		
		//일주일 페이지뷰 리스트 조회
		List<Map<String, Object>> weekPageView = adminDashboardService.selectWeekPageView();
		model.addAttribute("weekPageView", weekPageView);
		
		//일주일 방문자수 리스트 조회
		List<Map<String, Object>> weekVisitor = adminDashboardService.selectWeekVisitor();
		model.addAttribute("weekVisitor", weekVisitor);
		
		//일주일 페이지뷰, 방문자수, 가입자수, 탈퇴자수 조회
		List<Map<String, Object>> weekSummary = adminDashboardService.selectWeekSummary();
		model.addAttribute("weekSummary", weekSummary);
		
		//일주일 페이지뷰 합계
		int weekPageViewSum = adminDashboardService.selectWeekPageViewSum();
		model.addAttribute("weekPageViewSum", weekPageViewSum);
		
		//일주일 방문자수 합계
		int weekVisitorSum = adminDashboardService.selectWeekVisitorSum();
		model.addAttribute("weekVisitorSum", weekVisitorSum);
		
		//일주일 가입자수 합계
		int weekJoinSum = adminDashboardService.selectWeekJoinSum();
		model.addAttribute("weekJoinSum", weekJoinSum);
		
		//일주일 탈퇴자수 합계
		int weekQuitSum = adminDashboardService.selectWeekQuitSum();
		model.addAttribute("weekQuitSum", weekQuitSum);
		
		//이번달 페이지뷰 합계
		int monthPageViewSum = adminDashboardService.selectMonthPageViewSum();
		model.addAttribute("monthPageViewSum", monthPageViewSum);
		
		//이번달 방문자수 합계
		int monthVisitorSum = adminDashboardService.selectMonthVisitorSum();
		model.addAttribute("monthVisitorSum", monthVisitorSum);
		
		//이번달 가입자수 합계
		int monthJoinSum = adminDashboardService.selectMonthJoinSum();
		model.addAttribute("monthJoinSum", monthJoinSum);
		
		//이번달 탈퇴자수 합계
		int monthQuitSum = adminDashboardService.selectMonthQuitSum();
		model.addAttribute("monthQuitSum", monthQuitSum);
		
		
		map.put("deleteYn", "N");
		
		//관리자 목록 조회
		List<Map<String, Object>> managerList = managerService.selectManagerList(map);
		model.addAttribute("managerList", managerList);
		
		//운영자 목록 조회
		List<Map<String, Object>> operatorList = managerService.selectOperatorList();
		model.addAttribute("operatorList", operatorList);
		
		//스터디/프로젝트 목록 조회
		List<Map<String, Object>> groupList = studyService.selectMainGroupList();
		model.addAttribute("groupList", groupList);
		
		//러닝 목록 조회
		List<Map<String, Object>> learningList = adminDashboardService.selectLearningList();
		model.addAttribute("learningList", learningList);
		
		//잔디심기 목록 조회
		List<Map<String, Object>> makegrassList = makegrassService.selectList(null);
		model.addAttribute("makegrassList", makegrassList);
		
		//멘토링 목록 조회
		List<MentorVo> mentorList = mentoringService.selectMentorList();
		model.addAttribute("mentorList", mentorList);
		
		//문의 목록 조회
		List<QuestionVo> questionList = adminDashboardService.selectQuestionList();
		model.addAttribute("questionList", questionList);
		
		//자유게시판 목록 조회
		List<BoardVo> boardList = boardService.select(null);
		model.addAttribute("boardList", boardList);
		
		//공지사항 목록 조회
		List<NoticeVo> noticeList= adminDashboardService.selectNoticeList();
		model.addAttribute("noticeList", noticeList);
		
		//faq 목록 조회
		List<FaqVo> faqList= adminDashboardService.selectFaqList();
		model.addAttribute("faqList", faqList);
		
		
		return "admin/dashboard/list";
	}
	
	//관리자페이지 대시보드 - 관리자 리스트 조회 (화면)
	@GetMapping("manager/list")
	public String managerList(Model model, String keyword, String category, String status, String pno) {
		
		Map map = new HashMap();
		
		map.put("keyword", keyword);
		map.put("category", category);
		map.put("status", status);
       
	    int listCount = managerService.selectManagerCnt(map);
	    int currentPage = Integer.parseInt(pno);
	    int pageLimit = 10;
	    int boardLimit = 10;
       
        PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
        map.put("pv", pv);
		
		//관리자 목록 조회
		List<Map<String, Object>> managerList = managerService.selectManagerList(map);
		model.addAttribute("managerList", managerList);
	    model.addAttribute("listCount", listCount);
	    model.addAttribute("pv", pv);
	    model.addAttribute("pno", pno);
	    model.addAttribute("keyword", keyword);
	    model.addAttribute("category", category);
	    model.addAttribute("status", status);
		
		return "admin/dashboard/manager/list";
	}
	
	@GetMapping("manager/delete")
	public String deleteManager(String[] group, String pno, String keyword, String category, String status, HttpSession session) throws UnsupportedEncodingException {
		
		String encodedKeyword = URLEncoder.encode(keyword, "UTF-8");
		
		int result = managerService.deleteManagerList(group);
		
		if(result == 1) {
			session.setAttribute("alertMsg", "삭제되었습니다");
			return "redirect:/admin/dashboard/manager/list?pno="+pno+"&keyword="+encodedKeyword+"&category="+category+"&status="+status;
		}else {
			return "common/errorPage";
		}
	}
	

	
	//관리자페이지 대시보드 - 관리자 로그 조회 (화면)
	@GetMapping("manager/log")
	public String managerLog(Model model, String keyword, String category, String status, String pno) {
		
		Map map = new HashMap();
		
		System.out.println(keyword);
		System.out.println(category);
		System.out.println(status);
		System.out.println(pno);
		
		map.put("keyword", keyword);
		map.put("category", category);
		map.put("status", status);
       
	    int listCount = managerService.selectManagerLogCnt(map);
	    int currentPage = Integer.parseInt(pno);
	    int pageLimit = 10;
	    int boardLimit = 10;
       
        PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
        map.put("pv", pv);
		System.out.println(listCount);
		
		//관리자 목록 조회
		List<Map<String, Object>> managerLogList = managerService.selectManagerLogList(map);
		model.addAttribute("managerLogList", managerLogList);
	    model.addAttribute("listCount", listCount);
	    model.addAttribute("pv", pv);
	    model.addAttribute("pno", pno);
	    model.addAttribute("keyword", keyword);
	    model.addAttribute("category", category);
	    model.addAttribute("status", status);
		
		return "admin/dashboard/manager/log";
	}
	
	//관리자페이지 대시보드 - 관리자 프로필 수정 (화면)
	@GetMapping("manager/profile")
	public String managerProfile() {
		return "admin/dashboard/manager/profile";
	}
	
	//관리자페이지 대시보드 - 관리자 프로필 수정 (DB)
	@PostMapping("manager/profile")
	public String managerProfile(ProfileVo vo, HttpServletRequest req, HttpSession session) {
		
		ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager");
		
		String changeName = "";
		
		//파일 저장
		if(!vo.isEmpty()) {
			changeName = FileUploader.uploadManagerProfile(req, vo);
		}
		
		vo.setChangeName(changeName);
		vo.setNo(loginManager.getNo());

		
		//프사, 이름 업데이트
		int result = managerService.updateProfile(vo);
		
		if(result == 0) {
			return "common/errorPage";			
		}
	
		loginManager.setImgPath(changeName);
		loginManager.setNick(vo.getName());
		
		session.setAttribute("loginManager", loginManager);
		session.setAttribute("alertMsg", "프로필 수정 성공!");
		return "redirect:/admin/dashboard";

	}

}
