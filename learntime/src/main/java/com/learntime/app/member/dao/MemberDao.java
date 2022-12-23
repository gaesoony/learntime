package com.learntime.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.member.vo.MemberVo;

public interface MemberDao {
	
	//로그인
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo);
	//회원가입
	public int join(SqlSessionTemplate sst, MemberVo vo);
	//닉네임 중복확인
	public int nickCheck(SqlSessionTemplate sst, String nick);
	//이메일 중복확인
	public int emailCheck(SqlSessionTemplate sst, MemberVo vo);
	//아이디 찾기 (번호로 조회)
	public MemberVo findId(SqlSessionTemplate sst, String phone);
	//비밀번호 찾기 (아이디로 조회)
	public MemberVo findPwd(SqlSessionTemplate sst, String id);
	
	// 이메일 인증 메일 링크 클릭 할 경우
	public int updateEmailAuth(SqlSessionTemplate sst, String email);
	
	//회원 탈퇴
	public int memberDeletePwd(SqlSessionTemplate sst, MemberVo vo);
	
	//------------계정 정보 수정-----------
	//프로필,닉네임,자기소개
	public int mypageEditProfile(SqlSessionTemplate sst, MemberVo vo);
	//이메일
	public int mypageEditEmail(SqlSessionTemplate sst, MemberVo vo);
	
	

}
