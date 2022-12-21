package com.learntime.app.main.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.main.vo.MainVo;

@Repository
public class MainDaoImpl implements MainDao{

	@Override
	public MainVo selectMain(SqlSessionTemplate sst) {
		return sst.selectOne("mainMapper.selectMain");
	}

}
