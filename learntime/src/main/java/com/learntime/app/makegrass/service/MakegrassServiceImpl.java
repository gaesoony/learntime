package com.learntime.app.makegrass.service;

import java.util.List;
import java.util.Map;

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
				result3 = dao.insertMakegrassTag(sst, vo.getTag());
			}
		}
		
		return result1 * result2 * result3;
	}

	//게시글 목록 조회
	@Override
	public List<Map<String, Object>> selectList(MakegrassVo vo) {
		return dao.selectList(sst, vo);
	}

	//게시글 상세조회
	@Override
	public Map<String, Object> detail(String ano) {
		int result = dao.updateHit(sst, ano);
		
		Map<String, Object> makeDetail = dao.detail(sst, ano);
		
		if(result == 1) {
			List<Map<String, Object>> tagList = dao.tagList(sst, ano);
			makeDetail.put("tagList", tagList);
		}
		return makeDetail;
	}

	//게시글 삭제
	@Override
	public int delete(String no) {
		return dao.delete(sst, no);
	}

	//게시글 수정
	@Override
	public int edit(MakegrassVo vo) {
		return dao.edit(sst, vo);
	}

	//공부인증 랭킹 리스트
	@Override
	public List<Map<String, Object>> selectLankList() {
		return dao.makegrassLankList(sst);
	}

	//리스트 내 팔로잉 리스트
	@Override
	public List<Map<String, Object>> followingList(String no) {
		List<Map<String, Object>> followingList = dao.followingList(sst, no);
		return followingList;
	}

	//마이페이지 메인 리스트
	@Override
	public List<Map<String, Object>> selectMypageList(MakegrassVo vo) {
		return dao.selectMypageList(sst, vo);
	}

}
