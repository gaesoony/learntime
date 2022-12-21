package com.learntime.app.main.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.main.vo.MainVo;

public interface MainDao {

	//select main
	public MainVo selectMain(SqlSessionTemplate sst);

}
