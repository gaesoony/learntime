package com.learntime.app.qna.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.qna.vo.QnaVo;

@Service
public interface QnaService {

	//게시글 작성
	public int write(QnaVo vo);

	//게시글 목록
	public List<QnaVo> selectList(QnaVo vo);
	
	
}
