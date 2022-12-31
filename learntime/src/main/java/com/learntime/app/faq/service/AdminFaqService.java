package com.learntime.app.faq.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.question.vo.PageVo;

@Service
public interface AdminFaqService {

	public int selectCount();

	public List<FaqVo> selectFaqList(FaqVo vo, PageVo pv);

	public FaqVo selectOne(FaqVo vo);

}
