package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

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

	//관리자 목록 조회
	public List<Map<String, Object>> selectManagerList(SqlSessionTemplate sst, Map map);

	//운영자 목록 조회
	public List<Map<String, Object>> selectOperatorList(SqlSessionTemplate sst);

	//관리자 마스터계정 로그인
	public ManagerVo masterLogin(SqlSessionTemplate sst, ManagerVo vo);

	//관리자 cnt 조회
	public int selectManagerCnt(SqlSessionTemplate sst, Map map);

	//관리자 삭제
	public int deleteManager(SqlSessionTemplate sst, String string);

	//관리자 로그 목록 조회
	public List<Map<String, Object>> selectManagerLogList(SqlSessionTemplate sst, Map map);

	//관리자 로그 카운트 조회
	public int selectManagerLogCnt(SqlSessionTemplate sst, Map map);

}
