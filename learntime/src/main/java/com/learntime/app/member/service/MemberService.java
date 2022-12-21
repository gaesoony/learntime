package com.learntime.app.member.service;

import com.learntime.app.member.vo.MemberVo;

public interface MemberService {
	//로그인
	public MemberVo login(MemberVo vo);
	//회원가입
	public int join(MemberVo vo);
	//닉네임 중복 확인 AJAX
	public int nickCheck(String nick);
	//아이디 찾기 (번호로 조회)
	public MemberVo findId(String phone);
	//비밀번호 찾기 (아이디로 조회)
	public MemberVo findPwd(String id);
}
