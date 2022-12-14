package com.learntime.app.main.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.main.vo.MainVo;

@Repository
public class MainDaoImpl implements MainDao{

	//select main
	@Override
	public MainVo selectMain(SqlSessionTemplate sst) {
		return sst.selectOne("mainMapper.selectMain");
	}

	//select group list
	@Override
	public List<Map<String, String>> selectGroupList(SqlSessionTemplate sst) {
		return sst.selectList("mainMapper.selectGroupList");
	}

	//select notice list
	@Override
	public List<Map<String, Object>> selectNoticeList(SqlSessionTemplate sst) {
		return sst.selectList("mainMapper.selectNoticeList");
	}

	@Override
	public List<Map<String, Object>> selectLearningList(SqlSessionTemplate sst) {
		return sst.selectList("mainMapper.selectLearningList");
	}

	@Override
	public List<Map<String, Object>> selectPopularLearningList(SqlSessionTemplate sst) {
		return sst.selectList("mainMapper.selectPopularLearningList");
	}

}
