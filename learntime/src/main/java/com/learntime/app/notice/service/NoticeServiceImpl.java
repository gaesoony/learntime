package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.notice.dao.NoticeDao;
import com.learntime.app.notice.vo.NoticeCmtVo;
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
	public List<NoticeVo> selectNoticeList( Map map) {
		return dao.selectNoticeList(sst,map);
	}

	@Override
	public int selectCount() {
		return dao.selectCount(sst);
	}

	@Override
	public int cmtCnt() {
		
		return dao.cmtCnt(sst);
	}

	@Override
	public int updateHit(NoticeVo vo) {
		
		return dao.updateHit(sst,vo);
	}

	@Override
	public NoticeVo selectOne(NoticeVo vo) {
		
		return dao.selectOne(sst,vo);
	}

	@Override
	public List<NoticeVo> selectNoticeListAll(Map map) {
		
		return dao.selectNoticeListAll(sst,map);
	}

	@Override
	public int insertCmt(Map<String, Object> map) {
		return dao.insertCmt(sst, map);
	}

	@Override
	public List<NoticeCmtVo> selectCmtList(NoticeCmtVo ncv) {
		return dao.selectCmtList(sst, ncv);
	}

	
	

}
