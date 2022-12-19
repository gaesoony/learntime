package com.learntime.app.community.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.community.vo.BoardVo;

@Repository
public class BoardDao {
	
	public int write(SqlSessionTemplate sst, BoardVo vo) {
		return sst.insert("freeBoardMapper.wrtie", vo);
	}
}
