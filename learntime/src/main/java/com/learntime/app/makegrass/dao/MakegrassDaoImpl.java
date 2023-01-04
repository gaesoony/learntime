package com.learntime.app.makegrass.dao;

import java.util.List;

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

	@Override
	public List<MakegrassVo> selectList(SqlSessionTemplate sst, MakegrassVo vo) {
		return sst.selectList("makegrassMapper.selectList", vo);
	}

	//게시글 상세조회
	@Override
	public MakegrassVo detail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("makegrassMapper.detail", no);
	}

	//게시글 삭제
	@Override
	public int delete(SqlSessionTemplate sst, String no) {
		return sst.update("makegrassMapper.delete", no);
	}

}
