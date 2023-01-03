package com.learntime.app.qna.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.qna.vo.QnaAnswerVo;
import com.learntime.app.qna.vo.QnaTypeVo;
import com.learntime.app.qna.vo.QnaVo;

@Service
public interface QnaService {

	//게시글 작성
	public int write(QnaVo vo);

	//게시글 목록
	List<Map<String, Object>> selectList(QnaVo vo, QnaTypeVo qvo);
	
	//게시글 상세조회
	public QnaVo detail(String no);

	public int edit(QnaVo vo);

	
	
	
	
}
