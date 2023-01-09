package com.learntime.app.study.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learntime.app.alarm.service.AlarmService;
import com.learntime.app.alarm.vo.AlarmVo;
import com.learntime.app.member.vo.MemberVo;

import com.learntime.app.study.service.StudyService;
import com.learntime.app.study.vo.ApplyVo;
import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("study")
@Slf4j
public class StudyController {
	
	@Autowired
	private StudyService service;
	
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
	
	//스터디/프로젝트 목록 조회, 검색 (DB)
	@GetMapping("/list")
	public String list(SearchVo vo, Model model, HttpSession session) {
		
		if(vo.getTag() != null && vo.getTag().length == 0) {
			vo.setTag(null);
		}
		
		if(vo.getTechStack() != null && vo.getTechStack().length == 0) {
			vo.setTechStack(null);
		}
		
		if(vo.getKeyword() == null) {
			vo.setKeyword("");
		}
		
		if(vo.getType() == null) {
			vo.setType("전체");
		}
		
		if(vo.getOrder() == null) {
			vo.setOrder("recent");
		}
		
//		if(vo.getStatus() == null) {
//			vo.setStatus("open");
//		}
//		
		if(vo.getTechType() == null ) {
			vo.setTechType("인기");
		}	
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		
		//log.info("로그인멤버 : " + loginMember);
		
		//내가 가입한 모임 select (모임번호, 이름, 프사)
		if(loginMember != null) {			
			List<Map<String, String>> myGroupList = service.selectMyGroupList(loginMember.getNo());
			model.addAttribute("myGroupList", myGroupList);		
			
		}else {
			model.addAttribute("myGroupList", null);
		}
		
		//인기 태그 select
		List<Map<String, String>> popularTagList = service.selectPopularTagList();
		model.addAttribute("popularTagList", popularTagList);
		
		//인기 기술스택 select
		List<Map<String, String>> popularTechStackList = service.selectPopularTechStackList();
		model.addAttribute("popularTechStackList", popularTechStackList);
		
		//받아야하는 값 : 검색어 + 태그리스트 + 기술스택리스트 + 스터디or프로젝트 + 모집중or모집완료 + 정렬
		
		//log.info("SearchVo : " + vo);
		//log.info("화면으로부터 받은 값 : " + map);
		
		//전체 모임 정보 select
		List<Map<String, Object>> groupList = service.selectGroupList(vo);
		
		//log.info("그룹정보 : " + groupList);
		
		if(vo.getKeyword().trim().equals("")) {
			model.addAttribute("keyword", null);
		}else {
			model.addAttribute("keyword", vo.getKeyword());
		}
		
		model.addAttribute("techStack", vo.getTechStack());
		model.addAttribute("status", vo.getStatus());
		model.addAttribute("type", vo.getType());
		model.addAttribute("techType", vo.getTechType());
		model.addAttribute("order", vo.getOrder());
		model.addAttribute("groupList", groupList);
		model.addAttribute("tagList", vo.getTag());
		model.addAttribute("techStackList", vo.getTechStack());

		return "study/list";
	}
	

	//스터디/프로젝트 상세 조회 (화면)
	@GetMapping("/detail")
	public String detail(SearchVo vo, Model model, HttpSession session) {
		
		//뒤로가기 때문에 SearchVo 받아와야함
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		//map에 gno, mno 넣음
		Map map = new HashMap();
		map.put("gno", vo.getGno());
		
		if(loginMember != null) {
			map.put("mno", loginMember.getNo());			
		}
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(vo.getGno());
		
		//댓글 정보 select
		List<Map<String, Object>> groupCmtList = service.selectGroupCmtList(map);
		
		//map으로 좋아요싫어요, 스크랩 했는지 정보 받아옴
		Map<String, Object> likeScrap = null;
		if(loginMember != null) {
			likeScrap = service.selectLikeScrap(map);
			model.addAttribute("likeScrap", likeScrap);
		}
		
		//map으로 해당 모임에서 가입상태 정보 받아옴
		//가입가능 상태 : null, D(거절), F(탈퇴)
		//가입불가 상태: A(대기), B(모임장), C(승인), E(강퇴)
		String myStatus = service.selectMyStatus(map);

		model.addAttribute("searchVo", vo);
		model.addAttribute("groupOne", groupOne);
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("likeScrap", likeScrap);
		model.addAttribute("groupCmtList", groupCmtList);
		model.addAttribute("myStatus", myStatus);
		
		return "study/detail";
	}
	
	//스터디/프로젝트 모집 (화면 + DB select)
	@GetMapping("/recruit")
	public String recruit(Model model) {
		
		//모집 구분 select
		List<Map<String, String>> groupTypeList = service.selectGroupTypeList();
		model.addAttribute("groupTypeList", groupTypeList);
		
		//진행 기간 select
		List<Map<String, String>> groupPeriodList = service.selectGroupPeriodList();
		model.addAttribute("groupPeriodList", groupPeriodList);
		
		//기술 스택 select
		List<Map<String, String>> techStackList = service.selectTechStackList();
		model.addAttribute("techStackList", techStackList);

		
		
		return "study/recruit";
	}
	
	//스터디/프로젝트 모집 (DB insert)
	@PostMapping("/recruit")
	public String recruit(GroupVo vo, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		vo.setWriter(loginMember.getNo());
		vo.setWriterNick(loginMember.getNick());
		
		int result = service.recruit(vo);
		if(result >= 1) {
			session.setAttribute("alertMsg", "모임이 생성되었습니다");
			return "redirect:/study/list";
		}else {
			return "common/errorPage";
		}

	}
	
	//스터디/프로젝트 수정 (화면 + DB)
	@GetMapping("/edit")
	public String edit(SearchVo vo, Model model) {
		
		//뒤로가기 때문에 SearchVo 받아와야함
		model.addAttribute("SearchVo", vo);
		
		//모집 구분 select
		List<Map<String, String>> groupTypeList = service.selectGroupTypeList();
		model.addAttribute("groupTypeList", groupTypeList);
		
		//진행 기간 select
		List<Map<String, String>> groupPeriodList = service.selectGroupPeriodList();
		model.addAttribute("groupPeriodList", groupPeriodList);
		
		//기술 스택 select
		List<Map<String, String>> techStackList = service.selectTechStackList();
		model.addAttribute("techStackList", techStackList);
		
		//그룹번호로 정보 select
		Map<String, Object> groupOne = service.selectGroupOne(vo.getGno());
		model.addAttribute("groupOne", groupOne);
		
		return "study/edit";
	}
	
	//스터디/프로젝트 수정 (DB)
	@PostMapping("/edit")
	public String edit(SearchVo sv, GroupVo vo, HttpSession session) {
		
		vo.setNo(sv.getGno());
		
		System.out.println("수정하려고 받은 vo값:" + vo);
		
		int result = service.updateGroupInfo(vo);
		if(result >= 1) {
			session.setAttribute("alertMsg", "글 수정 완료!");
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
		
	}
	
	//스터디/프로젝트 삭제 (DB)
	@GetMapping("/delete")
	public String delete(SearchVo vo, HttpSession session) {
		
		String gno = vo.getGno();
		int result = service.deleteGroup(gno);
		
		if(result == 1) {
			session.setAttribute("alertMsg", "글 삭제 완료!");
			return "redirect:/study/list";
		}else {
			return "common/errorPage";
		}
	}
	
	//가입신청(DB)
	@PostMapping("/apply")
	public String apply(ApplyVo vo, HttpSession session) {
		
		//답변을 했을 경우엔 RECRUIT_REPLY 테이블에도 INSERT 해야함
		
		int result = service.insertGroupMember(vo);
		
		if(result == 1) {
			session.setAttribute("alertMsg", "가입 신청 완료!");
			
			
			//new AlarmVo(알람을 받는 회원 번호,알람을 보낸 회원 번호,"알람타입 1~7","보내고싶은 메세지 ")
			//알람타입 (1=공지/2=팔로우/3=댓글/4=멘토링/5=스터디 모집/6=디엠/7=답변채택)
			//AlarmVo alarmVo= new AlarmVo(sendMno, receMno, alarmTypeNo, massage);
			//그룹번호조회
			Map<String, Object> groupOne = service.selectGroupOne(vo.getGno());
			String sendMno = String.valueOf(groupOne.get("WRITER_NO"));
			AlarmVo alarmVo=new AlarmVo(sendMno,vo.getMno(),"5","가입신청이 도착했어요");
			alarmService.insert(alarmVo);
			
			
			return "redirect:/study/list";
			
		}else {
			return "common/errorPage";
		}

	}
	
//	//모집중 또는 모집완료 업데이트
//	@GetMapping("/openClose")
//	@ResponseBody
//	public String openClose(String gno) {
//		
//	}
//	
	//스크랩하기
	@GetMapping("/detail/addScrap")
	public String addScrap(SearchVo sv) {
		
		int result = service.addScrap(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//스크랩 취소하기
	@GetMapping("/detail/deleteScrap")
	public String deleteScrap(SearchVo sv) {
		
		int result = service.deleteScrap(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//좋아요하기
	@GetMapping("/detail/like")
	public String like(SearchVo sv) {
		
		int result = service.like(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//댓글 좋아요하기
	@GetMapping("/detail/cmtLike")
	public String cmtLike(SearchVo sv) {
		
		int result = service.cmtLike(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//싫어요하기
	@GetMapping("/detail/hate")
	public String hate(SearchVo sv) {
		
		int result = service.hate(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//댓글 싫어요하기
	@GetMapping("/detail/cmtHate")
	public String cmtHate(SearchVo sv) {
		
		int result = service.cmtHate(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	
	//좋아요 싫어요 삭제하기
	@GetMapping("/detail/deleteLikeHate")
	public String deleteLikeHate(SearchVo sv) {
		
		int result = service.deleteLikeHate(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//댓글 좋아요 싫어요 삭제하기
	@GetMapping("/detail/deleteCmtLikeHate")
	public String deleteCmtLikeHate(SearchVo sv) {
		
		int result = service.deleteCmtLikeHate(sv);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//댓글달기
	@PostMapping("/detail/writeCmt")
	public String writeCmt(SearchVo sv, String cmt) {
		
		Map map = new HashMap();
		map.put("gno", sv.getGno());
		map.put("mno", sv.getMno());
		map.put("cmt", cmt);
		
		int result = service.writeCmt(map);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
		
	}
	
	//대댓글달기
	@PostMapping("/detail/writeCmtReply")
	public String writeCmt(SearchVo sv, String cmt, String group) {
		
		Map map = new HashMap();
		map.put("gno", sv.getGno());
		map.put("mno", sv.getMno());
		map.put("cmt", cmt);
		map.put("group", group);
		
		int result = service.writeCmt(map);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
		
	}
	
	//모집완료 -> 모집중
	@GetMapping("/detail/open")
	public String open(SearchVo sv, String gno) {
		int result = service.open(gno);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
	
	//모집중 -> 모집완료
	@GetMapping("/detail/close")
	public String close(SearchVo sv, String gno) {
		int result = service.close(gno);
		
		if(result == 1) {
			return "redirect:/study/detail?gno="+sv.getGno()+"&keyword="+sv.getKeyword()+"&tag="+ sv.getTagList() +"&techType="+sv.getTechType()+"&techStack="+sv.getTechStackList()+"&type="+sv.getType()+"&order="+sv.getOrder()+"&status="+sv.getStatus();
		}else {
			return "common/errorPage";
		}
	}
}
