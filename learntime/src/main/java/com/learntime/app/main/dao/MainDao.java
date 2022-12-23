package com.learntime.app.main.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.main.vo.MainVo;

public interface MainDao {

	//select main
	public MainVo selectMain(SqlSessionTemplate sst);

	//select group list
	public List<Map<String, String>> selectGroupList(SqlSessionTemplate sst);

}
