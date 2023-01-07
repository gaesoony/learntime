package com.learntime.app.question.vo;

import lombok.Data;

@Data
public class PageVo {
	
	private int listCount;
	private int currentPage;
	private int pageLimit; //페이지 버튼 몇개까지 보여줄건지
	private int boardLimit;//현재 게시글을 몇개씩 보여줄건지
	
	private int maxPage; //최대 페이지개수
	private int startPage; //첫번째 페이지버튼 넘버
	private int endPage; //마지막 페이지버튼 넘버
	private int p;

}
