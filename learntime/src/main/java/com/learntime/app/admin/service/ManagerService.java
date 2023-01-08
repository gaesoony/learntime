package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

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

	//관리자 목록 조회
	public List<Map<String, Object>> selectManagerList(Map map);

	//운영자 목록 조회
	public List<Map<String, Object>> selectOperatorList();

	//관리자 cnt 조회
	public int selectManagerCnt(Map map);

	//관리자 리스트 삭제
	public int deleteManagerList(String[] group);

	//관리자 로그 목록 조회
	public List<Map<String, Object>> selectManagerLogList(Map map);

	//관리자 로그 CNT 조회
	public int selectManagerLogCnt(Map map);

}
