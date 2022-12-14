package com.learntime.app.skin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.vo.SkinVo;

@Repository
public class SkinDaoImpl implements SkinDao {
	@Autowired
	private SqlSessionTemplate sst;
	
	//스킨 추가
	@Override
	public int skinWrite(SqlSessionTemplate sst, SkinVo vo) {
		
		return sst.insert("skinMapper.skinWrite",vo);
	}
	//스킨 리스트
	@Override
	public List<SkinVo> skinList(SqlSessionTemplate sst, SearchVo vo) {
		
		return sst.selectList("skinMapper.skinList",vo);
	}
	//스킨 번호로 조회
	@Override
	public SkinVo skinEdit(SqlSessionTemplate sst, String no) {
		
		return sst.selectOne("skinMapper.skinEdit",no);
	}
	
	//스킨 활성화
	@Override
	public int skinAble(SqlSessionTemplate sst, String no) {
		
		return sst.update("skinMapper.skinAble",no);
	}
	
	//스킨 비활성화
	@Override
	public int skinDelete(SqlSessionTemplate sst, String no) {
		
		return sst.update("skinMapper.skinDelete",no);
	}
	@Override
	public int skinEditUpdate(SqlSessionTemplate sst, SkinVo vo) {
		
		return sst.update("skinMapper.skinEditUpdate",vo);
	}
	
	//회원용
	@Override
	public List<SkinVo> skinListMember(SqlSessionTemplate sst) {
		
		return sst.selectList("skinMapper.skinListMember");
	}
	
	//스킨 모달 정보
	@Override
	public SkinVo skinModal(SqlSessionTemplate sst, String no) {
		
		
		return sst.selectOne("skinMapper.skinModal",no);
	}
	@Override
	public int skinBuy(SqlSessionTemplate sst, Map<String, String> map) {
		
		return sst.insert("skinMapper.skinBuy",map);
	}
	
	//스킨 포인트 차감
	@Override
	public int minusToken(SqlSessionTemplate sst, Map<String, String> map) {
		
		return sst.update("skinMapper.minusToken",map);
	}
	@Override
	public List<SkinVo> myskin(SqlSessionTemplate sst, String no) {
		
		return sst.selectList("skinMapper.myskin",no);
	}

}
