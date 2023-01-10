package com.learntime.app.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.admin.service.BannerService;
import com.learntime.app.admin.service.PopupService;
import com.learntime.app.main.service.MainService;
import com.learntime.app.main.vo.MainVo;
import com.learntime.app.makegrass.service.MakegrassService;
import com.learntime.app.mertoring.service.MentoringService;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.SearchVo;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired
	private StudyService studyService;
	
	@Autowired
	private MentoringService mentoringService;
	
	@Autowired
	@Qualifier("makegrassServiceImpl")
	private MakegrassService makegrassService;
	
	@Autowired
	private BannerService bannerService;
	
	@Autowired
	private PopupService popupService;
	
	@Autowired
	private MainService service;
	
	//런타임 메인페이지 조회 (화면 + DB select)
	@GetMapping("")
	public String learnTimeMain(Model model) {
		
		//배너
		//디비에서 배너 리스트 조회
		List<Map<String, Object>> bannerList = bannerService.selectBannerListMain();
		model.addAttribute("bannerList", bannerList);
		
		//팝업
		//디비에서 팝업 리스트 조회
		List<Map<String, Object>> popupList = popupService.selectPopupListMain();
		model.addAttribute("popupList", popupList);
		
		//스터디 리스트 select
		List<Map<String, Object>> groupList = studyService.selectMainGroupList();
		model.addAttribute("groupList", groupList);
		
		//지식인
		List<Map<String, Object>> learningList = service.selectLearningList();
		model.addAttribute("learningList", learningList);
		
		//인기 지식인
		List<Map<String, Object>> popularLearningList = service.selectPopularLearningList();
		model.addAttribute("popularLearningList", popularLearningList);
		
		//멘토링
		List<MentorVo> mentorList = mentoringService.selectMentorList(null);
		model.addAttribute("mentorList", mentorList);
		
		//잔디심기 목록 조회
		List<Map<String, Object>> makegrassList = makegrassService.selectList(null);
		model.addAttribute("makegrassList", makegrassList);
		
		//공지사항
		List<Map<String, Object>> noticeList = service.selectNoticeList();
		model.addAttribute("noticeList", noticeList);
		
//		MainVo vo = service.selectMain();
		
//		model.addAttribute("mainVo", vo);
		
		return "main/main";
	}

}
