package com.learntime.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.member.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Override
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.selectOne("memberMapper.login",vo);
	}

	@Override
	public int join(SqlSessionTemplate sst, MemberVo vo) {
		
		return sst.insert("memberMapper.login",vo);
	}

}
