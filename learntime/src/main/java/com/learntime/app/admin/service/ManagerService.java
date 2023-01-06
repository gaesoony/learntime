package com.learntime.app.admin.service;

import com.learntime.app.admin.vo.ManagerVo;

public interface ManagerService {
	
	//로그인
	public ManagerVo login(ManagerVo vo);
	
	//회원가입
	public int join(ManagerVo vo) throws Exception;
	
	//닉네임 중복 확인 AJAX
	public int nickCheck(ManagerVo vo);
	
	//이메일 중복 확인 AJAX
	public int emailCheck(ManagerVo vo);

}
