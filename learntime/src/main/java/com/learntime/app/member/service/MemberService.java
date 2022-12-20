package com.learntime.app.member.service;

import com.learntime.app.member.vo.MemberVo;

public interface MemberService {
	//로그인
	public MemberVo login(MemberVo vo);

	public int join(MemberVo vo);
}
