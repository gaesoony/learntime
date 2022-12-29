package com.learntime.app.study.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.mystudy.vo.ProfileVo;
import com.learntime.app.study.vo.ApplyVo;
import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

public interface StudyService {
	
	//스터디/프로젝트 목록 조회 
	
	//스터디/프로젝트 상세 조회 
	
	//스터디/프로젝트 모집
	public int recruit(GroupVo vo);

	//스터디/프로젝트 수정
	
	//내가 가입한 모임 조회
	public List<Map<String, String>> selectMyGroupList(String no);

	//인기 태그 리스트 조회
	public List<Map<String, String>> selectPopularTagList();

	//인기 기술스택 리스트 조회
	public List<Map<String, String>> selectPopularTechStackList();

	//모집 구분 리스트 조회
	public List<Map<String, String>> selectGroupTypeList();

	//진행 기간 리스트 조회
	public List<Map<String, String>> selectGroupPeriodList();

	//기술 스택 리스트 조회
	public List<Map<String, String>> selectTechStackList();

	//기술 스택 유형으로 기술 스택 리스트 조회
	public List<Map<String, String>> selectTechStackListByType(String type);

	//그룹 리스트 조회
	public List<Map<String, Object>> selectGroupList(SearchVo vo);

	//그룹 번호로 기술스택 리스트 조회
	public List<Map<String, String>> selectTechStackListByGno(String gno);

	//그룹 한 개 조회
	public Map<String, Object> selectGroupOne(String gno);

	//로그인멤버가 그룹에게 좋아요 싫어요 스크랩한 정보 조회
	public Map<String, Object> selectLikeScrap(Map map);

	//그룹 삭제
	public int deleteGroup(String gno);

	//그룹 정보 수정
	public int updateGroupInfo(GroupVo vo);

	//그룹 멤버 추가
	public int insertGroupMember(ApplyVo vo);

	//그룹 프사, 이름 수정
	public int updateProfile(ProfileVo vo);

	//상태로 그룹멤버 리스트 조회
	public List<Map<String, String>> selectGroupMemberListByStatus(Map map);

	//가입내역번호로 답변, 질문, 회원정보 받아옴
	public List<Map<String, String>> selectAnswerListByNo(String rno);
	
	
	//추후 추가 예정..

}
