package com.learntime.app.makegrass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Repository
public class MakegrassDaoImpl implements MakegrassDao {

	//게시글 작성
	@Override
	public int insertMakegrass(SqlSessionTemplate sst, MakegrassVo vo) {
		return sst.insert("qnaMapper.insertMakegrass", vo);
	}

	@Override
	public int insertTag(SqlSessionTemplate sst, String[] tag) {
		return sst.insert("makegrassMapper.insertTag", tag);
	}
	

	@Override
	public int insertKnowledgeTag(SqlSessionTemplate sst, String[] tag) {
		return sst.insert("makegrassMapper.insertKnowledgeTag", tag);
	}

}
