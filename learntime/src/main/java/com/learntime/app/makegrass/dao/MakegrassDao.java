package com.learntime.app.makegrass.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Repository
public interface MakegrassDao {
	
	public int insertMakegrass(SqlSessionTemplate sst, MakegrassVo vo);

	public int insertTag(SqlSessionTemplate sst, String[] tag);

	public int insertMakegrassTag(SqlSessionTemplate sst, String[] tag);

	List<Map<String, Object>> selectList(SqlSessionTemplate sst, MakegrassVo vo);

	MakegrassVo detail(SqlSessionTemplate sst, String no);

	public int delete(SqlSessionTemplate sst, String no);

	public int updateHit(SqlSessionTemplate sst, String no);

	public int edit(SqlSessionTemplate sst, MakegrassVo vo);

	

}
