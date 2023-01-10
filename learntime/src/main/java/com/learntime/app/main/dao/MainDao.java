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

	//select notice list
	public List<Map<String, Object>> selectNoticeList(SqlSessionTemplate sst);

	public List<Map<String, Object>> selectLearningList(SqlSessionTemplate sst);

	public List<Map<String, Object>> selectPopularLearningList(SqlSessionTemplate sst);

}
