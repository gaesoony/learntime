package com.learntime.app.member.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.member.vo.AdminMemberVo;
import com.learntime.app.member.vo.FollowVo;
import com.learntime.app.member.vo.MemberGradeVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.member.vo.SearchVo;

public interface MemberService {
	//로그인
	public MemberVo login(MemberVo vo);
	//회원가입
	public int join(MemberVo vo) throws Exception;
	//닉네임 중복 확인 AJAX
	public int nickCheck(MemberVo vo);
	//이메일 중복 확인 AJAX
	public int emailCheck(MemberVo vo);
	//아이디 찾기 (번호로 조회)
	public MemberVo findId(String phone);
	//비밀번호 찾기 (아이디로 조회)
	public MemberVo findPwd(MemberVo vo)throws Exception;
	//비밀번호 변경
	public int editPwd(MemberVo vo);
	
	// 이메일 인증 메일 링크 클릭 할 경우
	public int emailAuth(String email);
	
	// 탈퇴(비밀번호로)
	public int memberDeletePwd(MemberVo vo);
	
	//------------계정 정보 수정-----------
	//인트로 수정
	public int mypageEditIntro(MemberVo vo);
	
	//프로필,닉네임,자기소개
	public int mypageEditProfile(MemberVo vo);
	//이메일
	public int mypageEditEmail(MemberVo vo)throws Exception;
	//전화번호
	public int mypageEditPhone(MemberVo vo);
	
	//-------------유저 찾기------------
	//회원번호로 조회
	public MemberVo selectNo(String no);
	
	//---------팔로우--------------------
	//팔로우 하기
	public int follow(FollowVo follow);
	//언팔로우
	public int unfollow(FollowVo follow);
	//나를 팔로잉 하는 사람 수 구하기
	public int followerCnt(String no);
	//내가 팔로잉 하는 사람 수 구하기
	public int followingCnt(String no);
	//나를 팔로잉 하는 사람 리스트 구하기
	public List<MemberVo> followerList(String no);
	//내가 팔로잉 하는 사람 리스트 구하기
	public List<MemberVo> followingList(String no);
	//팔로우 유무체크
	public int followCheck(FollowVo follow);
	
	
	//----관리자 
	//멤버 리스트
	public List<AdminMemberVo> memberList(Map pageMap);
	//멤버 탈퇴
	public int memberAdminDelete(String id);
	//멤버 수정
	public int adminMemberedit(MemberVo vo);
	//운영자 생성
	public int createOperator(MemberVo vo);
	
	//멤버 등급 조회
	public List<Map<String, String>> memberGrade();
	
	//리스트에서 멤버 등급 수정
	public int memberListGradeEdit(Map<String, Object> map);
	//리스트에서 멤버 탈퇴
	public int memberListMemberDelte(String[] checkNo);
	
	//멤버 등급 관리 수정
	public int memberGradeEdit(List<MemberGradeVo> list);
	
	//멤버 등급 관리 추가
	public int memberGradeinfoEdit(MemberGradeVo vo);
	
	//멤버 등급 관리 삭제
	public int memberGradeinfoDelete(String gradeNo);
	
	//전체 멤버 조회
	public int memberCnt(SearchVo vo);

	
	
	
	
}
