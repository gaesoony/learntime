package com.learntime.app.faq.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;


public interface AdminFaqService {

	public int selectCount();

	public List<FaqVo> selectFaqList(Map map);

	public FaqVo selectOne(FaqVo vo);

	public int deleteList(List<String> valueArr);
	
	public int deleteOne(int check);

}
