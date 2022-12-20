package com.learntime.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.member.vo.MemberVo;

public interface MemberDao {
	
	//로그인
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo);

	public int join(SqlSessionTemplate sst, MemberVo vo);
	

}
