package com.learntime.app.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.member.vo.AdminMemberVo;
import com.learntime.app.member.vo.FollowVo;
import com.learntime.app.member.vo.MemberGradeVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.member.vo.SearchVo;

public interface MemberDao {
	
	//로그인
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo);
	//회원가입
	public int join(SqlSessionTemplate sst, MemberVo vo);
	//닉네임 중복확인
	public int nickCheck(SqlSessionTemplate sst, MemberVo vo);
	//이메일 중복확인
	public int emailCheck(SqlSessionTemplate sst, MemberVo vo);
	//아이디 찾기 (번호로 조회)
	public MemberVo findId(SqlSessionTemplate sst, String phone);
	//비밀번호 찾기 (아이디로 조회)
	public MemberVo findPwd(SqlSessionTemplate sst, MemberVo vo);
	//비밀번호 재설정
	public int editPwd(SqlSessionTemplate sst, MemberVo vo);
	
	// 이메일 인증 메일 링크 클릭 할 경우
	public int updateEmailAuth(SqlSessionTemplate sst, String email);
	
	//회원 탈퇴
	public int memberDeletePwd(SqlSessionTemplate sst, MemberVo vo);
	
	//------------계정 정보 수정-----------
	
	//자기소개
	public int mypageEditIntro(SqlSessionTemplate sst, MemberVo vo);
	//프로필,닉네임,자기소개
	public int mypageEditProfile(SqlSessionTemplate sst, MemberVo vo);
	//이메일
	public int mypageEditEmail(SqlSessionTemplate sst, MemberVo vo);
	//전화번호
	public int mypageEditPhone(SqlSessionTemplate sst, MemberVo vo);
	
	
	//-------------유저 찾기------------
	//회원번호로 조회
	public MemberVo selectNo(SqlSessionTemplate sst, String no);
	
	//---------팔로우--------------------
	//팔로우 하기
	public int follow(SqlSessionTemplate sst, FollowVo follow);
	//언팔로우 하기
	public int unfollow(SqlSessionTemplate sst, FollowVo follow);
	//나를 팔로우 하는 사람 수 구하기
	public int followerCnt(SqlSessionTemplate sst, String no);
	//내가 팔로우 하는 사람 수 구하기
	public int followingCnt(SqlSessionTemplate sst, String no);
	//나를 팔로우 하는 사람 리스트 구하기
	public List<MemberVo> followerList(SqlSessionTemplate sst, String no);
	//내가 팔로우 하는 사람 리스트 구하기
	public List<MemberVo> followingList(SqlSessionTemplate sst, String no);
	//팔로우 유무체크
	public int followCheck(SqlSessionTemplate sst, FollowVo follow);
	
	
	//-------------어드민-----------------------
	//멤버 리스트 
	public List<AdminMemberVo> memberList(SqlSessionTemplate sst, Map pageMap);
	//멤버 탈퇴
	public int memberAdminDelete(SqlSessionTemplate sst, String id);
	//멤버 수정
	public int adminMemberedit(SqlSessionTemplate sst, MemberVo vo);
	//운영자 추가
	public int createOperator(SqlSessionTemplate sst, MemberVo vo);
	
	//멤버 등급 조회
	public List<Map<String, String>> memberGrade(SqlSessionTemplate sst);
	
	//멤버 리스트에서 등급 수정
	public int memberListGradeEdit(SqlSessionTemplate sst,Map<String, Object> map);
	
	//멤버 리스트 회원 탈퇴
	public int memberListMemberDelte(SqlSessionTemplate sst, String[] checkNo);
	
	//멤버 등급 관리 수정
	public int memberGradeEdit(SqlSessionTemplate sst, List<MemberGradeVo> list);
	
	//멤버 등급 관리 추가
	public int memberGradeinfoEdit(SqlSessionTemplate sst, MemberGradeVo vo);
	
	//멤버 등급 관리 삭제
	public int memberGradeinfoDelete(SqlSessionTemplate sst, String gradeNo);
	
	//멤버 전체 인원 
	public int memberCnt(SqlSessionTemplate sst, SearchVo vo);

	
	
	

}
