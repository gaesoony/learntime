package com.learntime.app.admin.q.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.q.dao.AdminQuestionDao;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.dao.QuestionDao;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;
@Service
public class AdminQuestionServiceImpl implements AdminQuestionService {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private AdminQuestionDao adao;

	@Override
	public List<QuestionVo> selectQuestionListAd(Map map) {

		return adao.selectQuestionListAd(sst,map);
	}

	@Override
	public int selectCount() {

		
		return adao.selectCount(sst);
	}

	@Override
	public QuestionVo selectOne(QuestionVo vo) {
		
		return adao.selectOne(sst,vo);
	}

	

	@Override
	public int deleteList(List<String> list) {
		return adao.deleteList(sst,list);
	}

	@Override
	public int deleteOne(int check) {
		return adao.deleteOne(sst,check);
	}
}
