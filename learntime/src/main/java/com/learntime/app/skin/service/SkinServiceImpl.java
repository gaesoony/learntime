package com.learntime.app.skin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.dao.SkinDao;
import com.learntime.app.skin.vo.SkinVo;

@Service
public class SkinServiceImpl implements SkinService {
	@Autowired
	@Qualifier("skinDaoImpl")
	private SkinDao skinDao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//스킨 추가
	@Override
	public int skinWrite(SkinVo vo) {
		
		return skinDao.skinWrite(sst,vo);
	}
	//스킨 리스트
	@Override
	public List<SkinVo> skinList(SearchVo vo) {
		
		return skinDao.skinList(sst,vo);
	}
	//스킨 번호로 조회
	@Override
	public SkinVo skinEdit(String no) {
		
		return skinDao.skinEdit(sst,no);
	}
	
	//스킨 활성화
	@Override
	public int skinAble(String no) {
		
		return skinDao.skinAble(sst,no);
	}
	//스킨 비활성화
	@Override
	public int skinDelete(String no) {
		
		return skinDao.skinDelete(sst,no);
	}
	
	//스킨 수정
	@Override
	public int skinEditUpdate(SkinVo vo) {
		
		return skinDao.skinEditUpdate(sst,vo);
	}
	
	//회원용 리스트
	@Override
	public List<SkinVo> skinListMember() {
		
		return skinDao.skinListMember(sst);
	}

}
