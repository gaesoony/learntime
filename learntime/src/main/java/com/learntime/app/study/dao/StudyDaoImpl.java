package com.learntime.app.study.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.study.vo.GroupVo;
import com.learntime.app.study.vo.SearchVo;

@Repository
public class StudyDaoImpl implements StudyDao{

	//그룹 정보 insert
	@Override
	public int insertGroupInfo(SqlSessionTemplate sst, GroupVo vo) {
		return sst.insert("studyMapper.insertGroupInfo", vo);
	}

	//그룹 가입질문 insert
	@Override
	public int insertGroupQuestion(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertGroupQuestion", str);
	}

	//그룹 기술스택 insert
	@Override
	public int insertGroupTechStack(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertGroupTechStack", str);
	}
	
	//공통 해시태그 insert
	@Override
	public int insertCommonTag(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertCommonTag", str);
	}
	
	//그룹 해시태그 insert
	@Override
	public int insertGroupTag(SqlSessionTemplate sst, String[] str) {
		return sst.insert("studyMapper.insertGroupTag", str);
	}

	//내가 가입한 그룹 select
	@Override
	public List<Map<String, String>> selectMyGroupList(SqlSessionTemplate sst, String no) {
		return sst.selectList("studyMapper.selectMyGroupList", no);
	}

	//인기 태그 리스트 select
	@Override
	public List<Map<String, String>> selectPopularTagList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectPopularTagList");
	}

	//인기 기술스택 리스트 select
	@Override
	public List<Map<String, String>> selectPopularTechStackList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectPopularTechStackList");
	}

	//모집 구분 리스트 select
	@Override
	public List<Map<String, String>> selectGroupTypeList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectGroupTypeList");
	}

	//진행 기간 리스트 select
	@Override
	public List<Map<String, String>> selectGroupPeriodList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectGroupPeriodList");
	}

	//기술 스택 리스트 select
	@Override
	public List<Map<String, String>> selectTechStackList(SqlSessionTemplate sst) {
		return sst.selectList("studyMapper.selectTechStackList");
	}

	//기술 스택 유형으로 기술 스택 select
	@Override
	public List<Map<String, String>> selectTechStackListByType(SqlSessionTemplate sst, String type) {
		return sst.selectList("studyMapper.selectTechStackListByType", type);
	}

	//그룹 리스트 조회
	@Override
	public List<Map<String, Object>> selectGroupList(SqlSessionTemplate sst, SearchVo vo) {
		List result = sst.selectList("studyMapper.selectGroupList", vo);
		return result;
	}

	//그룹번호로 기술스택 리스트 조회
	@Override
	public List<Map<String, String>> selectTechStackListByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectTechStackListByGno", gno);
	}

	//그룹번호로 스크랩수 조회
	@Override
	public List<Map<String, String>> selectScrapCntByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectScrapCntByGno", gno);
	}

	//그룹번호로 댓글수 조회
	@Override
	public List<Map<String, String>> selectCmtCntByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectCmtCntByGno", gno);
	}

	//그룹번호로 좋아요싫어요수 조회
	@Override
	public List<Map<String, String>> selectlikeHateCntByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectlikeHateCntByGno", gno);
	}

}
