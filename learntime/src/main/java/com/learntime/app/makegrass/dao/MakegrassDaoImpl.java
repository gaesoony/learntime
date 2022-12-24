package com.learntime.app.makegrass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Repository
public class MakegrassDaoImpl implements MakegrassDao {

	//게시글 작성
	@Override
	public int insertMakegrass(SqlSessionTemplate sst, MakegrassVo vo) {
		return sst.insert("makegrassMapper.insertMakegrass", vo);
	}

	@Override
	public int insertTag(SqlSessionTemplate sst, String[] str) {
		return sst.insert("makegrassMapper.insertTag", str);
	}
	

	@Override
	public int insertKnowledgeTag(SqlSessionTemplate sst, String[] str) {
		return sst.insert("makegrassMapper.insertKnowledgeTag", str);
	}

}
