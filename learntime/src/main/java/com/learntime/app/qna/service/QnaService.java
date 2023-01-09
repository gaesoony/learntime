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
	List<Map<String, Object>> selectList(QnaTypeVo qvo);
	
	//게시글 수정
	public int edit(QnaVo vo);

	//게시글 삭제
	public int delete(String qno);

	//게시글 상세조회
	public Map<String, Object> detail(String qno);

	public int writeAnswer(Map map);

	public List<Map<String, Object>> answerList(Map map);

	//상세조회 내 답변 채택
	public int select(String no);

	public int scrap(QnaTypeVo qvo);

	public Map<String, Object> selectEtcList(Map map);

	public List<Map<String, Object>> selectMypageList(QnaVo vo);
	
}
