package com.learntime.app.skin.dao;

import java.util.List;

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

}
