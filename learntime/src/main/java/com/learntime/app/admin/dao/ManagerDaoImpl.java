package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.admin.vo.ManagerVo;
import com.learntime.app.common.page.PageVo;
import com.learntime.app.mystudy.vo.ProfileVo;

@Repository
public class ManagerDaoImpl implements ManagerDao{

	//로그인
	@Override
	public ManagerVo login(SqlSessionTemplate sst, ManagerVo vo) {
		System.out.println("로그인sst:"+sst);
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
	public List<Map<String, Object>> selectManagerList(SqlSessionTemplate sst, Map map) {
		PageVo pv = (PageVo) map.get("pv");
		
		if(pv != null) {
			int offset = (pv.getCurrentPage()-1) * pv.getBoardLimit();
			int limit = pv.getBoardLimit();
			RowBounds rb = new RowBounds(offset, limit);
			return sst.selectList("managerMapper.selectManagerList", map, rb);
		}else {
			return sst.selectList("managerMapper.selectManagerList", map);
		}
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

	//관리자 cnt 조회
	@Override
	public int selectManagerCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("managerMapper.selectManagerCnt", map);
	}

	@Override
	public int deleteManager(SqlSessionTemplate sst, String no) {
		return sst.update("managerMapper.deleteManager", no);
	}

	//관리자 로그 목록 조회
	@Override
	public List<Map<String, Object>> selectManagerLogList(SqlSessionTemplate sst, Map map) {
		PageVo pv = (PageVo) map.get("pv");
		int offset = (pv.getCurrentPage()-1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("managerMapper.selectManagerLogList", map, rb);
	}

	@Override
	public int selectManagerLogCnt(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("managerMapper.selectManagerLogCnt", map);
	}

}
