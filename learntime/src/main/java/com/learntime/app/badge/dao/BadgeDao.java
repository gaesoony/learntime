package com.learntime.app.badge.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.badge.vo.BadgeVo;



public interface BadgeDao {

	int write(SqlSessionTemplate sst, BadgeVo vo);

}
