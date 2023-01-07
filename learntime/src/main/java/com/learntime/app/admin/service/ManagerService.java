package com.learntime.app.admin.service;

import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.mystudy.vo.ProfileVo;

public interface ManagerService {
	
	//로그인
	public ManagerVo login(ManagerVo vo);
	
	//회원가입
	public int join(ManagerVo vo) throws Exception;
	
	//닉네임 중복 확인 AJAX
	public int nickCheck(ManagerVo vo);
	
	//이메일 중복 확인 AJAX
	public int emailCheck(ManagerVo vo);

	//로그인 접속 정보 INSERT
	public int insertIp(ManagerVo loginManager);

	//관리자 프로필 업데이트
	public int updateProfile(ProfileVo vo);

}
