package com.learntime.app.badge.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.badge.dao.BadgeDao;
import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.badge.vo.SearchVo;





@Service
public class BadgeServiceImpl implements BadgeService {
	
	@Autowired
	@Qualifier("badgeDaoImpl")
	private BadgeDao badgeDao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//관리자 뱃지 등록
	@Override
	public int write(BadgeVo vo) {
		
		return badgeDao.write(sst,vo);
	}
	
	//관리자 뱃지 리스트 조회
	@Override
	public List<BadgeVo> listSelectAll(SearchVo vo) {
		
		return badgeDao.listSelectAll(sst,vo);
	}
	
	//관리자 뱃지 상세조회
	@Override
	public BadgeVo selectOne(String no) {
		
		return badgeDao.selectOne(sst,no);
	}
	
	//관리자 뱃지 상세조회 수정
	@Override
	public int edit(BadgeVo vo) {
		
		return badgeDao.edit(sst,vo);
	}

	@Override
	public int badgeCnt() {
		
		return badgeDao.badgeCnt(sst);
	}

}
