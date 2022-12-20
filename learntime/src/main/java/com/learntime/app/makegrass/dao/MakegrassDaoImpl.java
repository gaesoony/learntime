package com.learntime.app.makegrass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Repository
public class MakegrassDaoImpl implements MakegrassDao {

	//게시글 작성
	@Override
	public int write(SqlSessionTemplate sst, MakegrassVo vo) {
		
		return sst.insert("makegrassMapper.write", vo);
	}

}
