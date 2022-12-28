package com.learntime.app.qna.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.qna.dao.QnaDao;
import com.learntime.app.qna.vo.QnaAnswerVo;
import com.learntime.app.qna.vo.QnaVo;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//게시글 작성
	@Transactional
	@Override
	public int write(QnaVo vo) {
		
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		
		result1 = dao.write(sst, vo);
		
		if(result1 >= 1) {
			if(vo.getTag() == null) {
				result2 = 1;
			}else {
				result2 = dao.insertTag(sst, vo.getTag());
			}
		}
		
		if(result2 >= 1) {
			if(vo.getTag() == null) {
				result3 = 1;
			}else {
				result3 = dao.insertKnowledgeTag(sst, vo.getTag());
			}
		}
		
		return result1 * result2 * result3;
	}

	//게시글 목록 
	@Override
	public List<QnaVo> selectList(QnaVo vo) {
		return dao.selectList(sst, vo);
	}

	//게시글 수정
	@Override
	public int insertEdit(QnaVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	//게시글 상세조회
	@Override
	public QnaVo selectOne(QnaVo vo) {
		return dao.selectOne(sst, vo);
	}
	
	
}
