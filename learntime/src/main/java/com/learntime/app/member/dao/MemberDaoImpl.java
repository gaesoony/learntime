package com.learntime.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.member.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {
	//로그인
	@Override
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.selectOne("memberMapper.login",vo);
	}
	//회원가입
	@Override
	public int join(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.insert("memberMapper.join",vo);
	}
	//닉네임 중복확인
	@Override
	public int nickCheck(SqlSessionTemplate sst, String nick) {

		return sst.selectOne("memberMapper.nickCheck",nick);
	}
	//아이디 찾기 (번호로 조회)
	@Override
	public MemberVo findId(SqlSessionTemplate sst, String phone) {
		
		return sst.selectOne("memberMapper.findId",phone);
	}
	//비밀번호 찾기 (아이디로 조회)
	@Override
	public MemberVo findPwd(SqlSessionTemplate sst, String id) {
		
		return sst.selectOne("memberMapper.findPwd",id);
	}
	//이메일 인증 완료
	@Override
	public int updateEmailAuth(SqlSessionTemplate sst, String email) {
		return sst.update("memberMapper.updateEmailAuth", email);
	}
	//탈퇴
	@Override
	public int memberDeletePwd(SqlSessionTemplate sst, String pwd) {
		
		return sst.update("memberMapper.memberDeletePwd", pwd);
	}

}
