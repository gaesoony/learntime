package com.learntime.app.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.admin.vo.ManagerVo;

public interface ManagerDao {
	
	//로그인
	public ManagerVo login(SqlSessionTemplate sst, ManagerVo vo);
	
	//회원가입
	public int join(SqlSessionTemplate sst, ManagerVo vo);
	
	//닉네임 중복확인
	public int nickCheck(SqlSessionTemplate sst, ManagerVo vo);

	//이메일 중복확인
	public int emailCheck(SqlSessionTemplate sst, ManagerVo vo);

}
