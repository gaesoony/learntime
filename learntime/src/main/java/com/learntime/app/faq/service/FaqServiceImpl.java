package com.learntime.app.faq.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.faq.dao.FaqDao;
import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.question.vo.PageVo;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	private FaqDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int faqWrite(FaqVo vo) {

		return dao.faqWrite(sst,vo);
	}

	@Override
	public int selectCount() {

		return dao.selectCount(sst);
	}

	@Override
	public List<FaqVo> selectFaqList(FaqVo vo, PageVo pv) {

		return dao.selectFaqList(sst,vo,pv);
	}
	

}
