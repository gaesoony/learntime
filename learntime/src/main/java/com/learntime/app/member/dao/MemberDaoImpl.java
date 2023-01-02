package com.learntime.app.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.member.vo.AdminMemberVo;
import com.learntime.app.member.vo.FollowVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.member.vo.SearchVo;

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
	public int nickCheck(SqlSessionTemplate sst, MemberVo vo) {

		return sst.selectOne("memberMapper.nickCheck",vo);
	}
	
	//이메일 중복확인 
	@Override
	public int emailCheck(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.selectOne("memberMapper.emailCheck",vo);
	}
	
	//아이디 찾기 (번호로 조회)
	@Override
	public MemberVo findId(SqlSessionTemplate sst, String phone) {
		
		return sst.selectOne("memberMapper.findId",phone);
	}
	//비밀번호 찾기 (아이디로 조회)
	@Override
	public MemberVo findPwd(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.selectOne("memberMapper.findPwd",vo);
	}
	//비밀번호 재설정
	@Override
	public int editPwd(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.update("memberMapper.editPwd", vo);
	}
	//이메일 인증 완료
	@Override
	public int updateEmailAuth(SqlSessionTemplate sst, String email) {
		return sst.update("memberMapper.updateEmailAuth", email);
	}
	//탈퇴
	@Override
	public int memberDeletePwd(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.update("memberMapper.memberDeletePwd", vo);
	}
	
	//------------계정 정보 수정-----------
	//프로필,닉네임,자기소개
	@Override
	public int mypageEditProfile(SqlSessionTemplate sst, MemberVo vo) {

		return sst.update("memberMapper.mypageEdiProfile", vo);
	}
	// 이메일
	@Override
	public int mypageEditEmail(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.update("memberMapper.mypageEditEmail", vo);
	}
	//전화번호
	@Override
	public int mypageEditPhone(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.update("memberMapper.mypageEditPhone", vo);
	}
	
	//-------------유저 찾기------------
	//회원번호로 조회
	@Override
	public MemberVo selectNo(SqlSessionTemplate sst, String no) {
		
		return sst.selectOne("memberMapper.selectNo",no);
	}
	
	//---------팔로우--------------------
	//팔로우 하기
	@Override
	public int follow(SqlSessionTemplate sst, FollowVo follow) {
		
		return sst.insert("memberMapper.follow",follow);
	}
	//언팔로우하기
	@Override
	public int unfollow(SqlSessionTemplate sst, FollowVo follow) {
		return sst.delete("memberMapper.unfollow",follow);
	}
	//나를 팔로우 하는 사람의 수
	@Override
	public int followerCnt(SqlSessionTemplate sst, String no) {
		return sst.selectOne("memberMapper.followerCnt",no);
	}
	//내가 팔로우 하는 사람의 수
	@Override
	public int followingCnt(SqlSessionTemplate sst, String no) {
		return sst.selectOne("memberMapper.followingCnt",no);
	}
	//나를 팔로우 하는 사람 리스트
	@Override
	public List<MemberVo> followerList(SqlSessionTemplate sst, String no) {
		return sst.selectList("memberMapper.followerList",no);
	}
	//내가 팔로우 하는 사람 리스트
	@Override
	public List<MemberVo> followingList(SqlSessionTemplate sst, String no) {
		return sst.selectList("memberMapper.followingList",no);
	}
	//팔로우 유무체크
	@Override
	public int followCheck(SqlSessionTemplate sst, FollowVo follow) {
		
		return sst.selectOne("memberMapper.followCheck",follow);
	}
	
	//----------어드민--------------------
	//멤버리스트
	@Override
	public List<AdminMemberVo> memberList(SqlSessionTemplate sst,SearchVo vo) {
	
		return sst.selectList("memberMapper.memberList",vo);
	}
	//멤버 탈퇴
	@Override
	public int memberAdminDelete(SqlSessionTemplate sst, String id) {
		return sst.update("memberMapper.memberDeletePwd", id);
		
	}
	//멤버 수정
	@Override
	public int adminMemberedit(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.update("memberMapper.adminMemberedit", vo);
	}
	//운영자 추가
	@Override
	public int createOperator(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.insert("memberMapper.createOperator", vo);
	}
	
	
	
	

}
