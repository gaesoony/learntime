package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.notice.dao.AdminNoticeDao;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private AdminNoticeDao adao;

	@Override
	public int selectCount() {

		return adao.selectCount(sst);
	}

	@Override
	public int cmtCnt() {
		return adao.cmtCnt(sst);
	}

	@Override
	public int updateHit(NoticeVo vo) {
		return adao.updateHit(sst,vo);
	}

	@Override
	public List<NoticeVo> selectNoticeListAll(Map map) {
		return adao.selectNoticeListAll(sst,map);
	}

	@Override
	public List<NoticeVo> selectNoticeList(Map map) {
		return adao.selectNoticeList(sst,map);
	}

	@Override
	public NoticeVo selectOne(NoticeVo vo) {

		return adao.selectOne(sst,vo);
	}

	@Override
	public int activate(NoticeVo vo) {
		return adao.updateOne(sst,vo);
	}

	@Override
	public int deactivate(NoticeVo vo) {
		return adao.updateOne2(sst,vo);
	}

	@Override
	public int deleteOne(NoticeVo vo) {
		System.out.println("sssss");
		int no = adao.updateOne3(sst,vo);
		System.out.println("서비스:"+no);
		return no;
	}

	

}
