package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.notice.dao.NoticeDao;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;

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

	@Override
	public List<NoticeVo> selectQuestionList(Map<String, String> map, PageVo pv) {
		return dao.selectNoticeList(sst,map,pv);
	}

	@Override
	public int selectCount() {
		return dao.selectCount(sst);
	}

}
