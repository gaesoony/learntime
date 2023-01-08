package com.learntime.app.mertoring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.mertoring.service.MentoringService;
import com.learntime.app.mertoring.vo.ApplicationVo;
import com.learntime.app.mertoring.vo.MentorVo;
import com.learntime.app.mertoring.vo.ReviewVo;
import com.learntime.app.mertoring.vo.ScheduleVo;

@RequestMapping("mentor")
@Controller
public class MentorController {
	@Autowired
	public MentoringService ms;

	//리뷰 리스트 조회
	@GetMapping("/review/list")
	public String mentorReview(Model model) {
		List<ReviewVo> reviewList = ms.selectReviewList();
		model.addAttribute("reviewList", reviewList);
		return "/mentoring/mentorReview";
	}

	@GetMapping("/list")
	public String mentorList(Model model) {
		
		//멘토 리스트 조회
		List<MentorVo> mentorList = new ArrayList<MentorVo>();
		
		mentorList = ms.selectMentorList();
		model.addAttribute("mentorList", mentorList);
		
		System.out.println(mentorList);
		
		return "/mentoring/mentorList";
		
	}

	// 멘토링 등록 화면
	@GetMapping("/mentoring/regist")
	public String mentoringRegist(HttpSession session, Model model) {

		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		// 1. 직무
		List<Map<String, Object>> jobList = ms.selectJob();
		model.addAttribute("jobList", jobList);
		
		// 2. 카테고리
		List<Map<String, Object>> cateList = ms.selectCateNo();
		model.addAttribute("cateList", cateList);
		
		// 3. 유저 멘토 정보 받기
		if(loginMember != null) {
			MentorVo mv = ms.selectMentor(loginMember.getNo());
			session.setAttribute("mentorNo", mv.getNo());
		}
		
		return "/mentoring/mentoringRegist";
	}

	// 멘토링 등록 서버
	@PostMapping("/mentoring/regist")
	public String mentoringRegist(HttpSession session, MentorVo mv, String[] time) {
//		System.out.println(mv);
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		mv.setWriter(loginMember.getNo());

		// 멘토링 등록
		int result = ms.registerMentoring(mv);
		System.out.println(result);

		// 시간 배열 나눠서 list 만들기(time배열 값, mv.getMaxHour() 필요)
		// 1.시간, 분 뽑기..
		int hour = 0;
		int minute = 0;
		switch (mv.getMaxHour()) {
		  case "1":
		  case "3":
		  case "5":
		  case "7":
		    minute = 30;
		    break;
		  case "2":
		  case "4":
		  case "6":
		  case "8":
			hour = 1;
			break;  
		}
		hour = hour + Integer.parseInt(mv.getMaxHour())/2 - 1;
		
		List<ScheduleVo> scheduleList = new ArrayList<ScheduleVo>();
		
		String[] dayAndTime = null;
		String[] time2 = null;
		int hour2 = 0;
		int minute2 = 0;
		String endTime = "";
		String timeRange = "";
		
		for (int i = 0; i < time.length; i++) {
			dayAndTime = time[i].split("-");
			//2. 시간 더해서 뒤에 붙이기
			time2 = dayAndTime[1].split(":");
			
			hour2 = Integer.parseInt(time2[0]) + hour;
			minute2 = Integer.parseInt(time2[1]) + minute;
			
			if(minute2 == 60) {
				minute2 = 0;
				hour2 += 1;
			}
			endTime =  hour2 + ":" + String.format("%02d", minute2);
			//시작시간 - 끝시간
			timeRange = dayAndTime[1] + "-" + endTime;
			
			ScheduleVo sv= new ScheduleVo();
			
			sv.setNo(loginMember.getNo());
			sv.setMentorNo((String) session.getAttribute("mentorNo"));
			sv.setAbleDay(dayAndTime[0]);
			sv.setAbleTime(timeRange);
			
			//리스트에 추가
			System.out.println(sv);
			
			scheduleList.add(sv);
				
		}
		
		System.out.println(scheduleList);
		
		
		// 멘토링 스케줄 등록
		int result2 = ms.registerSchedule(scheduleList);
		System.out.println(result2);
		
		
		if ((result * result2 == 0)) {
			return "/common/error";
		}

		return "redirect:/mentor/list";
	}

	@GetMapping("/regist")
	public String mentorRegist() {
		return "/mentoring/mentorRegist";

	}

	@GetMapping("/mymentoring")
	public String myMentoring() {
		return "/mentoring/myMentoring";

	}

	@GetMapping("/mymentoring/applied")
	public String myMentoringA() {
		return "/mentoring/myMentoringA";

	}

	// 임시
	@GetMapping("/mymentoring/temp3")
	public String myMentoringT3() {
		return "/member/mypage-mentoring3";
	}

	@GetMapping("/mymentoring/temp2")
	public String myMentoringT2() {
		return "/member/mypage-mentoring2";
	}

	// 멘토 등록 찐
	@PostMapping("/mymentoring/temp2")
	public String mentoringRegist(MentorVo vo) {
		System.out.println("받아온vo : " + vo);
		int result = ms.mentorRegister(vo);

		if (result != 1) {
			return "common/error";
		}
		return "redirect:/mentor/mymentoring/temp3";
	}

	@GetMapping("/mymentoring/temp")
	public String myMentoringT1() {
		
		
		
		return "/member/mypage-mentoring";
	}
	
	
	//멘토리스트에서 멘토링 상세보기
	@ResponseBody
	@GetMapping(value = "/mentoring/detail", produces = "application/text;charset=utf8")
	public String showDetail(@RequestParam("no") String no) {
		
		System.out.println(no);
		//멘토링 디테일 조회
		MentorVo mv = ms.selectMentorDetail(no);

		//댓글 조회
		List<ReviewVo> rv = ms.selectReviewList(no);
		
		System.out.println(rv);
		
		Gson gson = new Gson();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("mv", mv);
		map.put("rvList", rv);
		
		String jsonString = gson.toJson(map);
		
		return jsonString;
	}
	
	//특정 날짜 가능시간 받아오기
	@ResponseBody
	@GetMapping(value = "/schedule", produces = "application/text;charset=utf8")
	public String getSchedule(ScheduleVo sv, Model model) {
		
		System.out.println(sv.getMentorNo());
		
		List<ScheduleVo> svList = ms.selectMentorSchedule(sv);
		
		System.out.println(svList);
		
		Gson gson = new Gson();
		
		String jsonString = gson.toJson(svList);
		
		return jsonString;
		
	}
	
	//멘토링 신청
	@PostMapping("/mentoring/apply")
	public String mentoringApply(ApplicationVo application, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
		application.setMNo(loginMember.getNo());
		
		System.out.println(application);
		
		int result = ms.insertApplication(application);
		
		if(result != 1) {
			return "/common/error";
		}
		
		return "redirect:/mentor/list";
	}
	

}
