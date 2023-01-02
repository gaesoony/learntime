package com.learntime.app.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.learntime.app.member.dao.MemberDao;
import com.learntime.app.member.mail.MailHandler;
import com.learntime.app.member.vo.AdminMemberVo;
import com.learntime.app.member.vo.FollowVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.member.vo.SearchVo;

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
	public int nickCheck(MemberVo vo) {
		
		return memberDao.nickCheck(sst,vo);
	}
	//닉네임 중복 확인 AJAX
	@Override
	public int emailCheck(MemberVo vo) {
		
		return memberDao.emailCheck(sst,vo);
	}
	
	//아이디 찾기 (번호로 조회)
	@Override
	public MemberVo findId(String phone) {
		
		return memberDao.findId(sst,phone);
	}
	//비밀번호 찾기 (아이디로 조회)
	@Override
	public MemberVo findPwd(MemberVo vo) throws Exception {
		
		MailHandler sendMail=new MailHandler(mailSender);
		sendMail.setSubject("[LEARN TIME]비밀번호 재설정 메일입니다.");
		sendMail.setText(
				"<h1>LEARN TIME 비밀번호 재설정</h1>"
				+"<br>비밀번호를 변경하시려면"
				+"<br>아래의 링크를 눌러주세요"
				+"<br>http://127.0.0.1:8888/app/member/editPwd?email="+vo.getId()
				);
		sendMail.setFrom("learntime.test@gmail.com", "LEARN TIME");
		sendMail.setTo(vo.getId());
		sendMail.send();
		
		return memberDao.findPwd(sst,vo);
	}
	//비밀번호 재설정 (아이디로 조회)
	@Override
	public int editPwd(MemberVo vo) {
		String newPwd=enc.encode(vo.getPwd());
		vo.setPwd(newPwd);
		return memberDao.editPwd(sst,vo);
	}


	// 이메일 인증 메일 링크 클릭 할 경우
	@Override
	public int emailAuth(String email) {
		return memberDao.updateEmailAuth(sst,email);
		
	}
	
	// 탈퇴(비밀번호로)
	@Override
	public int memberDeletePwd(MemberVo vo) {
		
		MemberVo dbMember=memberDao.login(sst,vo);
		boolean isMatch=enc.matches(vo.getPwd(), dbMember.getPwd());
		
		if (isMatch) {
			return memberDao.memberDeletePwd(sst,vo);
		}else {
			return 0;
		}
		
		
	}
	
	//------------계정 정보 수정-----------
	//프로필,닉네임,자기소개
	@Override
	public int mypageEditProfile(MemberVo vo) {
		
		return memberDao.mypageEditProfile(sst,vo);
	}
	//이메일
	@Override
	public int mypageEditEmail(MemberVo vo) throws Exception {

		MailHandler sendMail=new MailHandler(mailSender);
		sendMail.setSubject("[LEARN TIME]이메일 변경 인증 메일입니다.");
		sendMail.setText(
				"<h1>LEARN TIME 메일 인증</h1>"
				+"<br>이메일 변경을 하셨다면"
				+"<br>아래의 링크를 눌러주세요"
				+"<br>http://127.0.0.1:8888/app/member/emailAuth?email="+vo.getId()
				);
		sendMail.setFrom("learntime.test@gmail.com", "LEARN TIME");
		sendMail.setTo(vo.getId());
		sendMail.send();
		
		return memberDao.mypageEditEmail(sst,vo);
	}
	//전화번호
	@Override
	public int mypageEditPhone(MemberVo vo) {
		
		return memberDao.mypageEditPhone(sst,vo);
	}
	
	
	
	//-------------유저 찾기------------
	//회원번호로 조회
	@Override
	public MemberVo selectNo(String no) {
		
		return memberDao.selectNo(sst,no);
	}
	
	
	//---------팔로우--------------------
	//팔로우 하기
	@Override
	public int follow(FollowVo follow) {
		return memberDao.follow(sst,follow);
		
	}
	//언팔로우 하기
	@Override
	public int unfollow(FollowVo follow) {
		return memberDao.unfollow(sst,follow);
		
	}
	// 나를 팔로우 하는 사람 수 구하기
	@Override
	public int followerCnt(String no) {
		return memberDao.followerCnt(sst,no);
	}
	// 내가 팔로우 하는 사람 수 구하기
	@Override
	public int followingCnt(String no) {
		return memberDao.followingCnt(sst,no);
	}
	//나를 팔로우 하는 사람 리스트 구하기
	@Override
	public List<MemberVo> followerList(String no) {
		return memberDao.followerList(sst,no);
		
	}
	//내가 팔로우 하는 사람 리스트 구하기
	@Override
	public List<MemberVo> followingList(String no) {
		return memberDao.followingList(sst,no);
		
	}
	//팔로우 유무체크
	@Override
	public int followCheck(FollowVo follow) {
		
		return memberDao.followCheck(sst,follow);
	}

	//---------어드민------------
	//멤버리스트
	@Override
	public List<AdminMemberVo> memberList(SearchVo vo) {
		
		return memberDao.memberList(sst,vo);
	}
	//멤버 탈퇴
	@Override
	public int memberAdminDelete(String id) {
		
		return memberDao.memberAdminDelete(sst,id);
	}
	//멤버 수정
	@Override
	public int adminMemberedit(MemberVo vo) {
		
		return memberDao.adminMemberedit(sst,vo);
	}
	
	//운영자 생성
	@Override
	public int createOperator(MemberVo vo) {
		
		return memberDao.createOperator(sst,vo);
	}

	


}
