package com.learntime.app.skin.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.vo.SkinVo;

public interface SkinService {
	//스킨 추가
	int skinWrite(SkinVo vo);
	//스킨 리스트
	List<SkinVo> skinList(SearchVo vo);
	
	//스킨 번호로 조회
	SkinVo skinEdit(String no);
	
	//스킨 활성화
	int skinAble(String no);
	
	//스킨 비활성화
	int skinDelete(String no);
	
	//스킨 수정
	int skinEditUpdate(SkinVo vo);
	
	//회원용 리스트
	List<SkinVo> skinListMember();
	
	//모달 정보
	SkinVo skinModal(String no);
	
	//모달 구매
	int skinBuy(Map<String, String> map);
	
	//내 스킨 조회
	List<SkinVo> myskin(String no);

}
