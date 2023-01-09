package com.learntime.app.community.vo;

import lombok.Data;

@Data
public class BoardFilterVo {
	private String userNo;
	private String cate;
	private String search;
	private String page;
	private String sort;
	
	//검색 타입, 
	private String searchType;
	
	
}
