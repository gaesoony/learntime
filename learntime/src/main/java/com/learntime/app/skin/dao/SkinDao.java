package com.learntime.app.skin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.vo.SkinVo;

public interface SkinDao {
	
	//스킨 추가
	int skinWrite(SqlSessionTemplate sst, SkinVo vo);
	
	//스킨 리스트
	List<SkinVo> skinList(SqlSessionTemplate sst, SearchVo vo);
	
	//스킨 번호로 조회
	SkinVo skinEdit(SqlSessionTemplate sst, String no);

	//스킨 활성화
	int skinAble(SqlSessionTemplate sst, String no);

	//스킨 비활성화
	int skinDelete(SqlSessionTemplate sst, String no);
	
	//스킨 수정
	int skinEditUpdate(SqlSessionTemplate sst, SkinVo vo);

	//회원용 스킨 리스트 
	List<SkinVo> skinListMember(SqlSessionTemplate sst);

	//스킨 모달 정보
	SkinVo skinModal(SqlSessionTemplate sst, String no);
	
	//스킨 구매
	int skinBuy(SqlSessionTemplate sst, Map<String, String> map);
	
	//스킨 포인트 차감
	int minusToken(SqlSessionTemplate sst, Map<String, String> map);
	
	//내스킨 조회
	List<SkinVo> myskin(SqlSessionTemplate sst, String no);

}
