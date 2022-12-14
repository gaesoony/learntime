package com.learntime.app.badge.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.badge.vo.SearchVo;




public interface BadgeDao {
	//관리자 뱃지 등록
	int write(SqlSessionTemplate sst, BadgeVo vo);
	
	//관리자 뱃지 리스트
	List<BadgeVo> listSelectAll(SqlSessionTemplate sst, SearchVo vo);
	
	//관리자 뱃지 상세조회
	BadgeVo selectOne(SqlSessionTemplate sst, String no);
	
	//관리자 뱃지 수정
	int edit(SqlSessionTemplate sst, BadgeVo vo);
	
	//관리자 뱃지 수량
	int badgeCnt(SqlSessionTemplate sst);
	
	//뱃지 비활성화
	int delete(SqlSessionTemplate sst, BadgeVo vo);
	
	//뱃지 활성화
	int able(SqlSessionTemplate sst, BadgeVo vo);
	
	//회원용 뱃지 리스트
	List<BadgeVo> listSelectMember(SqlSessionTemplate sst,String no);

}
