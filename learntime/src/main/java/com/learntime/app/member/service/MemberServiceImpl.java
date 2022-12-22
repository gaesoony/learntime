package com.learntime.app.member.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.learntime.app.member.dao.MemberDao;
import com.learntime.app.member.mail.MailHandler;
import com.learntime.app.member.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private BCryptPasswordEncoder enc;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private JavaMailSender mailSender;
	
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
	public int join(MemberVo vo) throws Exception {
		String newPwd=enc.encode(vo.getPwd());
		vo.setPwd(newPwd);
		MailHandler sendMail=new MailHandler(mailSender);
		sendMail.setSubject("[LEARN TIME]회원가입 인증 메일입니다.");
		sendMail.setText(
				"<h1>LEARN TIME 메일 인증</h1>"
				+"<br>LEARN TIME에 가입 하신걸 환영합니다."
				+"<br>아래의 링크를 눌러주세요"
				+"<br>http://127.0.0.1:8888/app/member/emailAuth?email="+vo.getId()
				);
		sendMail.setFrom("learntime.test@gmail.com", "LEARN TIME");
		sendMail.setTo(vo.getId());
		sendMail.send();
		
		

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

	// 이메일 인증 메일 링크 클릭 할 경우
	@Override
	public int emailAuth(String email) {
		return memberDao.updateEmailAuth(sst,email);
		
	}
	// 탈퇴(비밀번호로)
	@Override
	public int memberDeletePwd(String pwd) {
		memberDao.memberDeletePwd(sst,pwd);
		return 0;
	}

}
