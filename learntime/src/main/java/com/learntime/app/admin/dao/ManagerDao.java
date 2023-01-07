package com.learntime.app.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.mystudy.vo.ProfileVo;

public interface ManagerDao {
	
	//로그인
	public ManagerVo login(SqlSessionTemplate sst, ManagerVo vo);
	
	//회원가입
	public int join(SqlSessionTemplate sst, ManagerVo vo);
	
	//닉네임 중복확인
	public int nickCheck(SqlSessionTemplate sst, ManagerVo vo);

	//이메일 중복확인
	public int emailCheck(SqlSessionTemplate sst, ManagerVo vo);

	//로그인 접속 정보 INSERT
	public int insertIp(SqlSessionTemplate sst, ManagerVo loginManager);

	//관리자 프로필 업데이트
	public int updateProfile(SqlSessionTemplate sst, ProfileVo vo);

}
