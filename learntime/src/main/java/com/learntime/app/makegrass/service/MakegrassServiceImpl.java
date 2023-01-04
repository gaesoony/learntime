package com.learntime.app.makegrass.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.makegrass.dao.MakegrassDao;
import com.learntime.app.makegrass.vo.MakegrassVo;

@Service
public class MakegrassServiceImpl implements MakegrassService {

	@Autowired
	private MakegrassDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//게시글 작성
	@Override
	@Transactional
	public int write(MakegrassVo vo) {
		
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		
		result1 = dao.insertMakegrass(sst, vo);
		
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
		
		System.out.println("result1 : " + result1);
		System.out.println("result2 : " + result2);
		System.out.println("result3 : " + result3);
		
		return result1 * result2 * result3;
	}

	//게시글 목록 조회
	@Override
	public List<MakegrassVo> selectList(MakegrassVo vo) {
		return dao.selectList(sst, vo);
	}

	//게시글 상세조회
	@Override
	@Transactional
	public MakegrassVo detail(String no) {
		return dao.detail(sst, no);
	}

	//게시글 삭제
	@Override
	public int delete(String no) {
		return dao.delete(sst, no);
	}

}
