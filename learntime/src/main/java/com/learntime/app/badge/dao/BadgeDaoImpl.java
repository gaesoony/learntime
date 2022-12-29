package com.learntime.app.badge.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.badge.vo.BadgeVo;

@Repository
public class BadgeDaoImpl implements BadgeDao {

	
	@Override
	public int write(SqlSessionTemplate sst, BadgeVo vo) {
	
		return sst.insert("badgeMapper.write",vo);
	}

}
