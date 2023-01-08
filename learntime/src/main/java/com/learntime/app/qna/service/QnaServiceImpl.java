package com.learntime.app.qna.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.qna.dao.QnaDao;
import com.learntime.app.qna.vo.QnaAnswerVo;
import com.learntime.app.qna.vo.QnaTypeVo;
import com.learntime.app.qna.vo.QnaVo;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//게시글 작성
	@Override
	@Transactional
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
	public List<Map<String, Object>> selectList(QnaTypeVo qvo) {
		
		List<Map<String, Object>> qnaList = dao.selectList(sst, qvo);
		
//		for(int i = 0; i<qnaList.size(); i++) {
//			String qno = String.valueOf(qnaList.get(i).get("NO"));
//		}
		
		List<Map<String, Object>> tagList = dao.tagList(sst, qvo.getQno());
		
		return qnaList;
	}

	//게시글 수정
	@Override
	@Transactional
	public int edit(QnaVo vo) {
		return dao.edit(sst, vo);
	}

	//게시글 삭제
	@Override
	public int delete(String qno) {
		return dao.delete(sst, qno);
	}

	//게시글 상세조회
	@Override
	public Map<String, Object> detail(String qno) {
		
		int result = dao.updateHit(sst, qno);
		Map<String, Object> qnaDetail = dao.detail(sst, qno);
		
		if(result == 1) {
			List<Map<String, Object>> tagList = dao.tagList(sst, qno);
			qnaDetail.put("tagList", tagList);
		}
		
		return qnaDetail;
	}

	//댓글 작성
	@Override
	public int writeAnswer(Map map) {
		return dao.writeAnswer(sst, map);
	}

	//상세조회 내 댓글 리스트
	@Override
	public List<Map<String, Object>> answerList(Map map) {
		List<Map<String, Object>> answerList = dao.answerList(sst, (String)map.get("qno"));
		for(int i = 0; i < answerList.size(); i++) {
			String ano = String.valueOf(answerList.get(i).get("NO"));
			String agno = String.valueOf(answerList.get(i).get("GROUP"));
			map.put("ano", ano);
			
			List<Map<String, Object>> commentList = dao.commentList(sst, agno);
			for(int l = 0; l < commentList.size(); l++ ) {
				String cno = String.valueOf(commentList.get(l).get("NO"));
				map.put("cno", cno);
			}
			
			answerList.get(i).put("commentList", commentList);
		}
		
		
		return answerList;
	}

	@Override
	public int select(String cno) {
		return dao.select(sst, cno);
	}

}
