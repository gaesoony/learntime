package com.learntime.app.makegrass.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.makegrass.dao.MakegrassDao;
import com.learntime.app.makegrass.vo.MakegrassVo;

@Service
public class MakegrassServiceImpl implements MakegrassService {

	@Autowired
	private MakegrassDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//게시글 작성
	@Override
	public int write(MakegrassVo vo) {
		
		return dao.write(sst, vo);
	}

}
