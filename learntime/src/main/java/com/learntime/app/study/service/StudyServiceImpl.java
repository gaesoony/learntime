package com.learntime.app.study.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learntime.app.mystudy.vo.ProfileVo;
import com.learntime.app.study.dao.StudyDao;
import com.learntime.app.study.vo.ApplyVo;
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
		
		// 그룹 가입내역 테이블에 작성자 insert
		
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		int result4 = 0;
		int result5 = 0;
		int result6 = 0;
		
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
		
		//if(result4 >= 1) {
			if(vo.getTag() == null) {
				result5 = 1;
			}else {
				result5 = dao.insertGroupTag(sst, vo.getTag());
			}
		//}
		
		//if(result5 >= 1) {
			result6 = dao.insertWriter(sst, vo);
		//}
		
		System.out.println("result1 :" + result1);
		System.out.println("result2 :" + result2);
		System.out.println("result3 :" + result3);
		System.out.println("result4 :" + result4);
		System.out.println("result5 :" + result5);

		return result1 * result2 * result3;

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

	//그룹 번호로 기술스택 리스트 조회
	@Override
	public List<Map<String, String>> selectTechStackListByGno(String gno) {
		List<Map<String, String>> result = dao.selectTechStackListByGno(sst, gno);
		return result;
	}

	//그룹 한 개 조회
	@Override
	public Map<String, Object> selectGroupOne(String gno) {
		
		//조회수 증가 update
		int result = dao.updateHit(sst, gno);
		
		Map<String, Object> groupOne = null;
		
		if(result == 1) {
			//그룹 한 개 조회
			groupOne = dao.selectGroupOne(sst, gno);
			
			//그룹 번호호 기술스택 리스트 조회
			List<Map<String, String>> techStackList = dao.selectTechStackListByGno(sst, gno);
			
			//그룹 번호로 가입질문 리스트 조회
			List<Map<String, String>> questionList = dao.selectQuestionListByGno(sst, gno);
			
			//그룹 번호로 태그 리스트 조회
			List<Map<String, String>> tagList = dao.selectTagListByGno(sst, gno);
			
			//그룹 번호로 멤버 리스트 조회
			List<Map<String, String>> memberList = dao.selectMemberListByGno(sst, gno);
			
			
			groupOne.put("techStackList", techStackList);
			groupOne.put("questionList", questionList);
			groupOne.put("tagList", tagList);
			groupOne.put("memberList", memberList);
			
		}
		

		
		return groupOne;
	}

	//로그인멤버가 그룹에게 좋아요 싫어요 스크랩한 정보 조회
	@Override
	public Map<String, Object> selectLikeScrap(Map map) {
		String likeHateStatus = dao.selectLikeHateByMno(sst, map);
		System.out.println("status:"+likeHateStatus);
		String scrap_yn = dao.selectScrapYn(sst, map);
		
		Map result = new HashMap();
		result.put("likeHateStatus", likeHateStatus);
		result.put("scrap_yn", scrap_yn);
		

		return result;
	}

	//그룹 삭제
	@Override
	public int deleteGroup(String gno) {
		int result = dao.deleteGroup(sst, gno);
		return result;
	}

	//그룹 정보 수정
	@Transactional
	@Override
	public int updateGroupInfo(GroupVo vo) {
		// 기본 정보 8개 + 제목 + 내용은 필수사항 + 주소 선택사항 -> RECRUIT_GROUP 테이블에 1행 update
		
		// 가입질문은 선택사항 -> DELETE -> RECRUIT_QUESTION 테이블 질문 개수만큼 여러행 INSERT (+그룹번호 SELECT)
		
		// 기술스택은 필수사항 -> DELETE -> GROUP_TECH_STACK 테이블에 기술스택 개수만큼 여러행 INSERT (+그룹번호 SELECT)
		
		// 태그도 선택사항 -> DELETE -> TAG 테이블에 있으면 넘어가고 없으면 INSERT -> GROUP_TAG 테이블에 태그 개수만큼 여러행 INSERT (+그룹번호 SELECT)
		
		vo.strTechStachNoList();
		
		int delete1 = 0; //가입질문
		int delete2 = 0; //기술스택
		int delete3 = 0; //그룹태그
		
		int result1 = 0; //그룹정보
		int result2 = 0; //가입질문
		int result3 = 0; //기술스택
		int result4 = 0; //공통태그
		int result5 = 0; //그룹태그
		
		System.out.println(vo);
		
		delete1 = dao.deleteGroupQuestion(sst, vo.getNo());
		
		//if(delete1 >= 1) {
			delete2 = dao.deleteGroupTechStack(sst, vo.getNo());
		//}
		
		//if(delete2 >= 1) {
			delete3 = dao.deleteGroupTag(sst, vo.getNo());
		//}
		
		//if(delete3 >= 1) {
			result1 = dao.updateGroupInfo(sst, vo);
		//}

		if(result1 >= 1) {
			if(vo.getQuestion() == null) {
				result2 = 1;
			}else {
				result2 = dao.insertGroupQuestion(sst, vo.getQuestion());
			}
		}
		
		//if(result2 >= 1) {
			result3 = dao.insertGroupTechStack(sst, vo.getTechStackNo());
		//}
		
		//if(result3 >= 1) {
			if(vo.getTag() == null) {
				result4 = 1;
			}else {
				result4 = dao.insertCommonTag(sst, vo.getTag());
			}
		//}
		
		//if(result4 >= 1) {
			if(vo.getTag() == null) {
				result5 = 1;
			}else {
				result5 = dao.insertGroupTag(sst, vo.getTag());
			}
		//}
		
		System.out.println("delete1 :" + delete1);
		System.out.println("delete2 :" + delete2);
		System.out.println("delete3 :" + delete3);
		System.out.println("result1 :" + result1);
		System.out.println("result2 :" + result2);
		System.out.println("result3 :" + result3);
		System.out.println("result4 :" + result4);
		System.out.println("result5 :" + result5);

		//return delete1 * delete2 * delete3 * result1 * result2 * result3 * result4;
		return result1;
	}

	//그룹 멤버 추가
	@Transactional
	@Override
	public int insertGroupMember(ApplyVo vo) {
		
		int result1 = 0;
		int result2 = 0;
		
		if(vo.getAnswer() == null) {
			//RECRUIT_LIST 테이블에만 INSERT
			result1 = dao.insertGroupMember(sst, vo);
			result2 = 1;
		}
		
		if(vo.getAnswer() != null) {
			//RECRUIT_LIST, RECRUIT_APPLY 테이블 2개에 INSERT
			result1 = dao.insertGroupMember(sst, vo);
			if(result1 == 1) {
				
				for(int i=0; i<vo.getQno().length; i++) {
					Map map = new HashMap();
					map.put("qno", vo.getQno()[i]);
					map.put("answer", vo.getAnswer()[i]);
					map.put("gno", vo.getGno());
					map.put("mno", vo.getMno());
					
					result2 = dao.insertAnswer(sst, map);
					
					if(result2 == 0) {
						break;
					}
				}
				
			}
		}

		return result1 * result2;
	}

	//그룹 프사, 이름 수정
	@Override
	public int updateProfile(ProfileVo vo) {
		int result = dao.updateGroupProfile(sst, vo);
		return result;
	}

	//상태로 그룹 멤버리스트 조회
	@Override
	public List<Map<String, String>> selectGroupMemberListByStatus(Map map) {
		List<Map<String, String>> result = dao.selectGroupMemberListByStatus(sst, map);
		return result;
	}

	//가입내역 번호로 답변, 질문, 회원정보 받아옴
	@Override
	public List<Map<String, String>> selectAnswerListByNo(String rno) {
		List<Map<String, String>> result = dao.selectAnswerListByNo(sst, rno);
		return result;
	}

	//가입신청 수락하기
	@Override
	public int confirm(String rno) {
		int result = dao.confirm(sst, rno);
		return result;
	}

	
	//가입신청 거절하기
	@Override
	public int reject(String rno) {
		int result = dao.reject(sst, rno);
		return result;
	}

	//모임장 위임하기
	@Override
	public int delegate(String rno) {
		
		int result1 = dao.leaveRep(sst);
		int result2 = 0;
		if(result1 == 1) {
			result2 = dao.delegate(sst, rno);
		}
		return result1 * result2;
	}

	@Override
	public int quit(String rno) {
		int result = dao.quit(sst, rno);
		return result;
	}

	@Override
	public int kick(String rno) {
		int result = dao.kick(sst, rno);
		return result;
	}

	//스크랩하기
	@Override
	public int addScrap(SearchVo sv) {
		int result = dao.addScrap(sst, sv);
		return result;
	}

	//스크랩 취소하기
	@Override
	public int deleteScrap(SearchVo sv) {
		int result = dao.deleteScrap(sst, sv);
		return result;
	}

	//좋아요하기
	@Override
	public int like(SearchVo sv) {
		int result = dao.like(sst, sv);
		return result;
	}

	//싫어요하기
	@Override
	public int hate(SearchVo sv) {
		int result = dao.hate(sst, sv);
		return result;
	}

	//좋아요싫어요 삭제하기
	@Override
	public int deleteLikeHate(SearchVo sv) {
		int result = dao.deleteLikeHate(sst, sv);
		return result;
	}

	//댓글달기
	@Override
	public int writeCmt(Map map) {
		int result = dao.writeCmt(sst, map);
		return result;
	}

	//그룹 댓글 리스트 select
	@Override
	public List<Map<String, Object>> selectGroupCmtList(Map map) {
		List<Map<String, Object>> result = dao.selectGroupCmtList(sst, (String)map.get("gno"));
		
		//그룹 리스트 결과 
		for(int i=0; i<result.size(); i++) {			
			String cgno = String.valueOf(result.get(i).get("GROUP"));
			String cno = String.valueOf(result.get(i).get("NO"));
			map.put("cno", cno);
			
			//댓글 그룹 번호로 대댓글 리스트 조회
			List<Map<String, String>> groupCmtReplyList = dao.selectGroupCmtReplyListByCgno(sst, cgno);
			for(int j=0; j<groupCmtReplyList.size(); j++) {
				String rcno = String.valueOf(groupCmtReplyList.get(j).get("NO"));
				map.put("rcno", rcno);
				
				String replyLikeHateStatus = dao.selectCmtReplyLikeHate(sst, map);
				groupCmtReplyList.get(j).put("replyLikeHateStatus", replyLikeHateStatus);
			}
			result.get(i).put("groupCmtReplyList", groupCmtReplyList);
			
			//댓글 번호랑 회원 번호로 로그인한 회원이 댓글에 좋아요, 싫어요 눌렀는지 조회
			String likeHateStatus = dao.selectCmtLikeHate(sst, map);
			result.get(i).put("likeHateStatus", likeHateStatus);
			
			
		}
		
		return result;
	}

	@Override
	public int cmtLike(SearchVo sv) {
		int result = dao.cmtLike(sst, sv);
		return result;
	}

	@Override
	public int cmtHate(SearchVo sv) {
		int result = dao.cmtHate(sst, sv);
		return result;
	}

	@Override
	public int deleteCmtLikeHate(SearchVo sv) {
		int result = dao.deleteCmtLikeHate(sst, sv);
		return result;
	}

	//마이페이지 게시글 목록 조회
	@Override
	public List<Map<String,Object>> selectMypageList(Map map) {
		List<Map<String,Object>> result = dao.selectMypageList(sst, map);
		return result;
	}

	//마이페이지 게시글 개수 카운트
	@Override
	public int selectMypageCnt(Map map) {
		int result = dao.selectMypageCnt(sst, map);
		return result;
	}

	//모집번호랑 회원번호로 해당 그룹에서의 status 조회
	@Override
	public String selectMyStatus(Map map) {
		String result = dao.selectMyStatus(sst, map);
		return result;
	}

	@Override
	public int open(String gno) {
		int result = dao.open(sst, gno);
		return result;
	}

	@Override
	public int close(String gno) {
		int result = dao.close(sst, gno);
		return result;
	}

}
