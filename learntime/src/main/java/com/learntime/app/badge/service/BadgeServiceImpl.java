package com.learntime.app.badge.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.badge.dao.BadgeDao;
import com.learntime.app.badge.vo.BadgeVo;




@Service
public class BadgeServiceImpl implements BadgeService {
	
	@Autowired
	@Qualifier("badgeDaoImpl")
	private BadgeDao badgeDao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public int write(BadgeVo vo) {
		
		return badgeDao.write(sst,vo);
	}

}
