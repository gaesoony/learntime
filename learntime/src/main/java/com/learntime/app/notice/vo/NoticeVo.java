package com.learntime.app.notice.vo;

import java.sql.Timestamp;

import lombok.Data;
@Data
public class NoticeVo {
	
	private int no;
	private int cateNo;
	private String writer;
	private String title;
	private String content;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;
	private int hit;
	private int status;
	private String category;
	private String keyword;
	private int cmt;
	private String cateName;
	

}
