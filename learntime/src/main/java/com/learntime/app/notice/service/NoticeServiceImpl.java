package com.learntime.app.notice.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.notice.dao.NoticeDao;
import com.learntime.app.notice.vo.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private NoticeDao dao;

	@Override
	public int noticeWrite(NoticeVo vo) {
		
		return dao.noticeWrite(sst, vo);
	}

}
