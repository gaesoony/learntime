package com.learntime.app.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.mystudy.vo.ProfileVo;

@Repository
public class ManagerDaoImpl implements ManagerDao{

	//로그인
	@Override
	public ManagerVo login(SqlSessionTemplate sst, ManagerVo vo) {
		return sst.selectOne("managerMapper.login", vo);
	}

	//회원가입
	@Override
	public int join(SqlSessionTemplate sst, ManagerVo vo) {
		return sst.insert("managerMapper.join", vo);
	}

	//닉네임 중복확인
	@Override
	public int nickCheck(SqlSessionTemplate sst, ManagerVo vo) {
		return sst.selectOne("managerMapper.nickCheck", vo);
	}

	//이메일 중복확인
	@Override
	public int emailCheck(SqlSessionTemplate sst, ManagerVo vo) {
		return sst.selectOne("managerMapper.emailCheck", vo);
	}

	//로그인 접속 정보 INSERT
	@Override
	public int insertIp(SqlSessionTemplate sst, ManagerVo loginManager) {
		return sst.insert("managerMapper.insertIp", loginManager);
	}

	@Override
	public int updateProfile(SqlSessionTemplate sst, ProfileVo vo) {
		return sst.update("managerMapper.updateProfile", vo);
	}

}
