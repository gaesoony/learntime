package com.learntime.app.badge.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.badge.vo.SearchVo;


@Repository
public class BadgeDaoImpl implements BadgeDao {

	//관리자 뱃지 등록
	@Override
	public int write(SqlSessionTemplate sst, BadgeVo vo) {
	
		return sst.insert("badgeMapper.write",vo);
	}
	
	//관리자 뱃지 리스트
	@Override
	public List<BadgeVo> listSelectAll(SqlSessionTemplate sst, SearchVo vo) {
		
		return sst.selectList("badgeMapper.listSelectAll",vo);
	}
	
	//관리자 뱃지 상세조회
	@Override
	public BadgeVo selectOne(SqlSessionTemplate sst, String no) {
		
		return sst.selectOne("badgeMapper.selectOne",no);
	}
	
	//관리자 뱃지 상세조회 수정
	@Override
	public int edit(SqlSessionTemplate sst, BadgeVo vo) {
		
		return sst.update("badgeMapper.edit",vo);
	}
	//관리자 뱃지 개수 확인
	@Override
	public int badgeCnt(SqlSessionTemplate sst) {
		return sst.selectOne("badgeMapper.badgeCnt");
	}

}
