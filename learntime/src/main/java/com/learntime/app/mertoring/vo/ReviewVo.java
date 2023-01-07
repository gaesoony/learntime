package com.learntime.app.mertoring.vo;

import lombok.Data;

@Data
public class ReviewVo {
	private String no;
	private String mentorNo;
	private String writer;
	private String writerImg;
	private String writerNick;
	private String mentorNick;
	private String star;
	private String mentoringTitle;
	private String modifyDate;
	private String enrollDate;
	private String content;
}
