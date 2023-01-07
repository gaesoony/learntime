package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

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

	//관리자 목록 조회
	@Override
	public List<Map<String, Object>> selectManagerList(SqlSessionTemplate sst) {
		return sst.selectList("managerMapper.selectManagerList");
	}

	//운영자 목록 조회
	@Override
	public List<Map<String, Object>> selectOperatorList(SqlSessionTemplate sst) {
		return sst.selectList("managerMapper.selectOperatorList");
	}

	//관리자 마스터 계정 로그인
	@Override
	public ManagerVo masterLogin(SqlSessionTemplate sst, ManagerVo vo) {
		return sst.selectOne("managerMapper.masterLogin", vo);
	}

}
