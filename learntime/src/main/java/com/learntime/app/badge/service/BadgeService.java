package com.learntime.app.badge.service;

import java.util.List;

import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.badge.vo.SearchVo;



public interface BadgeService {

	
	//관리자 뱃지 등록 
	int write(BadgeVo vo);
	
	//관리자 뱃지 리스트
	List<BadgeVo> listSelectAll(SearchVo vo);
	
	//관리자 뱃지 상세 조회
	BadgeVo selectOne(String no);
	
	//관리자 뱃지 수정
	int edit(BadgeVo vo);
	
	//관리자 뱃지 개수
	int badgeCnt();
	//관리자 뱃지 비활성화
	int delete(BadgeVo vo);
	//관리자 뱃지 활성화
	int able(BadgeVo vo);
	
	//회원용 리스트
	List<BadgeVo> listSelectMember(String no);

	

}
