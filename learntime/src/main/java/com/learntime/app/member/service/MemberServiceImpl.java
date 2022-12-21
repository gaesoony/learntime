package com.learntime.app.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.learntime.app.member.dao.MemberDao;
import com.learntime.app.member.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private BCryptPasswordEncoder enc;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	@Qualifier("memberDaoImpl")
	private MemberDao memberDao;
	
	//로그인
	@Override
	public MemberVo login(MemberVo vo) {
		
		MemberVo dbMember=memberDao.login(sst,vo);
		boolean isMatch=enc.matches(vo.getPwd(), dbMember.getPwd());
		
		if (isMatch) {
			return dbMember;
		}else {
			return null;
		}
	}
	
	//회원가입
	@Override
	public int join(MemberVo vo) {
		String newPwd=enc.encode(vo.getPwd());
		vo.setPwd(newPwd);

		return memberDao.join(sst,vo);

	}
	//닉네임 중복 확인 AJAX
	@Override
	public int nickCheck(String nick) {
		
		return memberDao.nickCheck(sst,nick);
	}
	//아이디 찾기 (번호로 조회)
	@Override
	public MemberVo findId(String phone) {
		
		return memberDao.findId(sst,phone);
	}
	//비밀번호 찾기 (아이디로 조회)
	@Override
	public MemberVo findPwd(String id) {
		
		return memberDao.findPwd(sst,id);
	}

}
