package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.dao.ManagerDao;
import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.mystudy.vo.ProfileVo;


@Service
public class ManagerServiceImpl implements ManagerService{
	
	@Autowired
	private BCryptPasswordEncoder enc;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	@Qualifier("managerDaoImpl")
	private ManagerDao dao;

	//로그인
	@Override
	public ManagerVo login(ManagerVo vo) {
		
		if(vo.getId().equals("123")) {
			System.out.println("로그인sst:"+sst);
			ManagerVo master = dao.masterLogin(sst, vo);
			if(master == null) {
				return null;
			}
			return master;
		}
		ManagerVo dbMember = dao.login(sst,vo);

		boolean isMatch=enc.matches(vo.getPwd(), dbMember.getPwd());
		
		if (isMatch) {
			return dbMember;
		}else {
			return null;
		}
	}
	
	//회원가입
	@Override
	public int join(ManagerVo vo) throws Exception {
		String newPwd=enc.encode(vo.getPwd());
		vo.setPwd(newPwd);
		
		return dao.join(sst,vo);

	}
	//닉네임 중복 확인 AJAX
	@Override
	public int nickCheck(ManagerVo vo) {
		return dao.nickCheck(sst, vo);
	}

	@Override
	public int emailCheck(ManagerVo vo) {
		return dao.emailCheck(sst, vo);
	}

	//로그인 접속 정보 INSERT
	@Override
	public int insertIp(ManagerVo loginManager) {
		return dao.insertIp(sst, loginManager);
	}

	//관리자 프로필 업데이트
	@Override
	public int updateProfile(ProfileVo vo) {
		return dao.updateProfile(sst, vo);
	}

	//관리자 목록 조회
	@Override
	public List<Map<String, Object>> selectManagerList(Map map) {
		return dao.selectManagerList(sst, map);
	}

	//운영자 목록 조회
	@Override
	public List<Map<String, Object>> selectOperatorList() {
		return dao.selectOperatorList(sst);
	}

	@Override
	public int selectManagerCnt(Map map) {
		return dao.selectManagerCnt(sst, map);
	}

	@Override
	public int deleteManagerList(String[] group) {
		int result = 0;
		for(int i=0; i<group.length; i++) {
			result = dao.deleteManager(sst, group[i]);	
			if(result == 0) {
				break;
			}
		}
		return result;
	}

	@Override
	public List<Map<String, Object>> selectManagerLogList(Map map) {
		return dao.selectManagerLogList(sst, map);
	}

	@Override
	public int selectManagerLogCnt(Map map) {
		return dao.selectManagerLogCnt(sst, map);
	}

}
