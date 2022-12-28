package com.learntime.app.community.vo;

import lombok.Data;

@Data
public class BoardVo {
	
	private String no;
	private String cateNo;
	private String writer;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String modifyDate;
	private String hit;
	
//	추가 -> 댓글 수, 좋아요 수, 싫어요 수, 작성자 닉네임, 작성자프로필, 카테고리 이름
	private String likes;
	private String hates;
	private String writerNick;
	private String writerImg;
	private String cate;
	private String cmtCount;
	private String lhCount;
	
}



