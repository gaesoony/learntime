package com.learntime.app.study.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.study.dao.StudyDao;
import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class StudyServiceImpl implements StudyService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private StudyDao dao;

	//스터디/프로젝트 모집
	@Transactional
	@Override
	public int recruit(GroupVo vo) {
		vo.strTechStachNoList();
	
		// 기본 정보 8개 + 제목 + 내용은 필수사항 + 주소 선택사항 -> RECRUIT_GROUP 테이블에 1행 INSERT
		
		// 가입질문은 선택사항 -> RECRUIT_QUESTION 테이블 질문 개수만큼 여러행 INSERT (+그룹번호 SELECT)
		
		// 기술스택은 필수사항 -> GROUP_TECH_STACK 테이블에 기술스택 개수만큼 여러행 INSERT (+그룹번호 SELECT)
		
		// 태그도 선택사항 -> TAG 테이블에 있으면 넘어가고 없으면 INSERT -> GROUP_TAG 테이블에 태그 개수만큼 여러행 INSERT (+그룹번호 SELECT)
		
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		int result4 = 0;
		int result5 = 0;
		
		result1 = dao.insertGroupInfo(sst, vo);
		
		if(result1 >= 1) {
			if(vo.getQuestion() == null) {
				result2 = 1;
			}else {
				result2 = dao.insertGroupQuestion(sst, vo.getQuestion());
			}
		}
		
		if(result2 >= 1) {
			result3 = dao.insertGroupTechStack(sst, vo.getTechStackNo());
		}
		
		if(result3 >= 1) {
			if(vo.getTag() == null) {
				result4 = 1;
			}else {
				result4 = dao.insertCommonTag(sst, vo.getTag());
			}
		}
		
		if(result4 >= 1) {
			if(vo.getTag() == null) {
				result5 = 1;
			}else {
				result5 = dao.insertGroupTag(sst, vo.getTag());
			}
		}
		
		System.out.println("result1 :" + result1);
		System.out.println("result2 :" + result2);
		System.out.println("result3 :" + result3);
		System.out.println("result4 :" + result4);
		System.out.println("result5 :" + result5);

		return result1 * result2 * result3 * result4 * result5;

	}

	//내가 가입한 모임 조회
	@Override
	public List<Map<String, String>> selectMyGroupList(String no) {
		List<Map<String, String>> result = dao.selectMyGroupList(sst, no);
		return result;
	}

	//인기 태그 목록 조회
	@Override
	public List<Map<String, String>> selectPopularTagList() {
		List<Map<String, String>> result = dao.selectPopularTagList(sst);
		return result;
	}

	//인기 기술스택 리스트 조회
	@Override
	public List<Map<String, String>> selectPopularTechStackList() {
		List<Map<String, String>> result = dao.selectPopularTechStackList(sst);
		return result;
	}

	//모집 구분 리스트 조회
	@Override
	public List<Map<String, String>> selectGroupTypeList() {
		List<Map<String, String>> result = dao.selectGroupTypeList(sst);
		return result;
	}

	//진행 기간 리스트 조회
	@Override
	public List<Map<String, String>> selectGroupPeriodList() {
		List<Map<String, String>> result = dao.selectGroupPeriodList(sst);
		return result;
	}

	//기술 스택 리스트 조회
	@Override
	public List<Map<String, String>> selectTechStackList() {
		List<Map<String, String>> result = dao.selectTechStackList(sst);
		return result;
	}

	//기술 스택 유형으로 기술 스택 리스트 조회
	@Override
	public List<Map<String, String>> selectTechStackListByType(String type) {
		List<Map<String, String>> result = dao.selectTechStackListByType(sst, type);
		return result;
	}

	//그룹 리스트 조회
	@Override
	public List<Map<String, Object>> selectGroupList(SearchVo vo) {
		
		//그룹 리스트 조회
		List<Map<String, Object>> groupList = dao.selectGroupList(sst, vo);
		//log.info("스터디/프로젝트 정보 : "+groupList);
		
		//그룹 리스트 결과 
		for(int i=0; i<groupList.size(); i++) {			
			String gno = String.valueOf(groupList.get(i).get("NO"));
			
			//그룹 번호로 기술스택 리스트 조회
			List<Map<String, String>> techStackList = dao.selectTechStackListByGno(sst, gno);
			groupList.get(i).put("techStackList", techStackList);
			
		}
		
		return groupList;
	}

	@Override
	public List<Map<String, String>> selectTechStackListByGno(String gno) {
		List<Map<String, String>> result = dao.selectTechStackListByGno(sst, gno);
		return result;
	}

	@Override
	public List<Map<String, String>> selectScrapCntByGno(String gno) {
		List<Map<String, String>> result = dao.selectScrapCntByGno(sst, gno);
		return result;
	}

	@Override
	public List<Map<String, String>> selectCmtCntByGno(String gno) {
		List<Map<String, String>> result = dao.selectCmtCntByGno(sst, gno);
		return result;
	}

	@Override
	public List<Map<String, String>> selectlikeHateCntByGno(String gno) {
		List<Map<String, String>> result = dao.selectlikeHateCntByGno(sst, gno);
		return result;
	}

}
