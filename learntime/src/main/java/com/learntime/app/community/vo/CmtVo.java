package com.learntime.app.community.vo;

import lombok.Data;

@Data
public class CmtVo {
	
	private String no;
	private String boardNo;
	private String writer;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String modifyDate;
	private String depth;
	private String group;
	
	
	//추가 -> 
	private String writerNick;
	private String writerImg;
	private String likes;
	private String hates;

}
