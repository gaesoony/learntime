package com.learntime.app.faq.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.question.vo.PageVo;


public interface FaqService {

	public int faqWrite(FaqVo vo);

	public int selectCount();

	public List<FaqVo> selectFaqList(Map map);

	public FaqVo selectOne(FaqVo vo);

}
