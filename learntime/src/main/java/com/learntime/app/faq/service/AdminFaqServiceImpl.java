package com.learntime.app.faq.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.faq.dao.AdminFaqDao;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;

@Service
public class AdminFaqServiceImpl implements AdminFaqService{
	
	@Autowired
	private AdminFaqDao adao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int selectCount() {
		return adao.selectCount(sst);
	}

	@Override
	public List<FaqVo> selectFaqList(Map map) {
		return adao.selectFaqList(sst,map);
	}

	@Override
	public FaqVo selectOne(FaqVo vo) {
		return adao.selectOne(sst,vo);
	}

	@Override
	public int deleteOne(List<Integer> list) {
		return adao.deleteOne(sst,list);
	}

}
