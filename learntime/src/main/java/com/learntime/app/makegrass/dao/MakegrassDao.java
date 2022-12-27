package com.learntime.app.makegrass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Repository
public interface MakegrassDao {
	
	int insertMakegrass(SqlSessionTemplate sst, MakegrassVo vo);

	int insertTag(SqlSessionTemplate sst, String[] str);

	int insertKnowledgeTag(SqlSessionTemplate sst, String[] str);

	List<MakegrassVo> selectList(SqlSessionTemplate sst, MakegrassVo vo);

	

}
