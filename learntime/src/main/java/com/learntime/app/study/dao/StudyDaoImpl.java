package com.learntime.app.study.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.mystudy.vo.ProfileVo;
import com.learntime.app.study.vo.ApplyVo;
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
		System.out.println("커먼태그 들어옴");
		int result = sst.insert("studyMapper.insertCommonTag", str);
		System.out.println(result);
		return result;
		
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

	//그룹 한 개 조회
	@Override
	public Map<String, Object> selectGroupOne(SqlSessionTemplate sst, String gno) {
		return sst.selectOne("studyMapper.selectGroupOneByGno", gno);
	}

	//그룹번호로 가입질문리스트 조회
	@Override
	public List<Map<String, String>> selectQuestionListByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectQuestionListByGno", gno);
	}

	//그룹번호로 태그리스트 조회
	@Override
	public List<Map<String, String>> selectTagListByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectTagListByGno", gno);
	}

	//그룹번호로 멤버리스트 조회
	@Override
	public List<Map<String, String>> selectMemberListByGno(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectMemberListByGno", gno);
	}

	//조회수 1 증가
	@Override
	public int updateHit(SqlSessionTemplate sst, String gno) {
		return sst.update("studyMapper.updateHit", gno);
	}

	//가입내역 테이블에 작성자 insert
	@Override
	public int insertWriter(SqlSessionTemplate sst, GroupVo vo) {
		return sst.insert("studyMapper.insertWriter", vo);
	}

	@Override
	public String selectLikeHateByMno(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("studyMapper.selectLikeHateByMno", map);
	}

	@Override
	public String selectScrapYn(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("studyMapper.selectScrapYn", map);
	}

	//그룹 삭제
	@Override
	public int deleteGroup(SqlSessionTemplate sst, String gno) {
		return sst.update("studyMapper.deleteGroup", gno);
	}

	//그룹 정보 수정
	@Override
	public int updateGroupInfo(SqlSessionTemplate sst, GroupVo vo) {
		return sst.update("studyMapper.editGroup", vo);
	}

	//가입 질문 삭제
	@Override
	public int deleteGroupQuestion(SqlSessionTemplate sst, String no) {
		return sst.update("studyMapper.deleteGroupQuestion", no);
	}

	//기술스택 삭제
	@Override
	public int deleteGroupTechStack(SqlSessionTemplate sst, String no) {
		System.out.println("delete2들어옴");
		return sst.update("studyMapper.deleteGroupTechStack", no);
	}

	//그룹 태그 삭제
	@Override
	public int deleteGroupTag(SqlSessionTemplate sst, String no) {
		return sst.update("studyMapper.deleteGroupTag", no);
	}

	//그룹 멤버 추가
	@Override
	public int insertGroupMember(SqlSessionTemplate sst, ApplyVo vo) {
		return sst.insert("studyMapper.insertGroupMember", vo);
	}

	//그룹 프사, 이름 수정
	@Override
	public int updateGroupProfile(SqlSessionTemplate sst, ProfileVo vo) {
		return sst.update("studyMapper.updateGroupProfile", vo);
	}

	//상태로 그룹 멤버 리스트 조회
	@Override
	public List<Map<String, String>> selectGroupMemberListByStatus(SqlSessionTemplate sst, Map map) {
		return sst.selectList("studyMapper.selectGroupMemberListByStatus", map);
	}

	//가입 내역 번호로 답변, 질문, 회원정보 받아옴
	@Override
	public List<Map<String, String>> selectAnswerListByNo(SqlSessionTemplate sst, String rno) {
		return sst.selectList("studyMapper.selectAnswerListByNo", rno);
	}

	//가입 답변 insert
	@Override
	public int insertAnswer(SqlSessionTemplate sst, Map map) {
		return sst.insert("studyMapper.insertAnswer", map);
	}

	//가입신청 수락하기
	@Override
	public int confirm(SqlSessionTemplate sst, String rno) {
		return sst.insert("studyMapper.confirm", rno);
	}

	@Override
	public int reject(SqlSessionTemplate sst, String rno) {
		return sst.insert("studyMapper.reject", rno);
	}

	@Override
	public int delegate(SqlSessionTemplate sst, String rno) {
		return sst.insert("studyMapper.delegate", rno);
	}

	@Override
	public int leaveRep(SqlSessionTemplate sst) {
		return sst.insert("studyMapper.leaveRep");
	}

	@Override
	public int quit(SqlSessionTemplate sst, String rno) {
		return sst.insert("studyMapper.quit", rno);
	}

	@Override
	public int kick(SqlSessionTemplate sst, String rno) {
		return sst.insert("studyMapper.kick", rno);
	}

	@Override
	public int addScrap(SqlSessionTemplate sst, SearchVo sv) {
		return sst.insert("studyMapper.addScrap", sv);
	}

	@Override
	public int deleteScrap(SqlSessionTemplate sst, SearchVo sv) {
		return sst.delete("studyMapper.deleteScrap", sv);
	}

	@Override
	public int like(SqlSessionTemplate sst, SearchVo sv) {
		return sst.insert("studyMapper.like", sv);
	}

	@Override
	public int hate(SqlSessionTemplate sst, SearchVo sv) {
		return sst.insert("studyMapper.hate", sv);
	}

	@Override
	public int deleteLikeHate(SqlSessionTemplate sst, SearchVo sv) {
		return sst.delete("studyMapper.deleteLikeHate", sv);
	}

	//댓글달기
	@Override
	public int writeCmt(SqlSessionTemplate sst, Map map) {
		return sst.insert("studyMapper.writeCmt", map);
	}

	//그룹 댓글 리스트 조회
	@Override
	public List<Map<String, Object>> selectGroupCmtList(SqlSessionTemplate sst, String gno) {
		return sst.selectList("studyMapper.selectGroupCmtList", gno);
	}

	//그룹 대댓글 리스트 조회
	@Override
	public List<Map<String, String>> selectGroupCmtReplyListByCgno(SqlSessionTemplate sst, String cgno) {
		return sst.selectList("studyMapper.selectGroupCmtReplyListByCgno", cgno);
	}

	//댓글에 좋아요,싫어요 했는지 조회
	@Override
	public String selectCmtLikeHate(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("studyMapper.selectCmtLikeHate", map);
	}

	@Override
	public String selectCmtReplyLikeHate(SqlSessionTemplate sst, Map map) {
		return sst.selectOne("studyMapper.selectCmtReplyLikeHate", map);
	}

	@Override
	public int cmtLike(SqlSessionTemplate sst, SearchVo sv) {
		return sst.insert("studyMapper.cmtLike", sv);
	}

	@Override
	public int cmtHate(SqlSessionTemplate sst, SearchVo sv) {
		return sst.insert("studyMapper.cmtHate", sv);
	}

	@Override
	public int deleteCmtLikeHate(SqlSessionTemplate sst, SearchVo sv) {
		return sst.delete("studyMapper.deleteCmtLikeHate", sv);
	
	}



}
