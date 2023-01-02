package com.learntime.app.study.vo;

import lombok.Data;

@Data
public class SearchVo {
	
	//그룹번호
	private String gno;
	
	//사용자번호
	private String mno;
	
	//댓글번호
	private String cno;
	
	//검색어
	private String keyword;
	
	//태그 
	private String[] tag;
	
	private String tagList;
	
	//기술스택
	private String[] techStack;
	
	private String techStackList;
	
	//그룹 유형 : 전체, 스터디, 프로젝트
	private String type;
	
	//정렬 : recent(최신순), comment(댓글순), recommend(좋아요순), score(정확도순), interest(관심언어), scrap(스크랩순), hit(조회순)
	private String order;
	
	//상태 : open(모집중), null(전체)
	private String status; 
	
	//기술스택 타입 : 인기, 프론트엔드, 백엔드, 모바일, 기타, 모두보기
	private String techType;

}
