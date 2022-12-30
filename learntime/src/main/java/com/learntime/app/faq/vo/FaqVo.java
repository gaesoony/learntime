package com.learntime.app.faq.vo;

import java.sql.Timestamp;

import lombok.Data;
@Data
public class FaqVo {
	
	private int no;
	private int cateNo;
	private String writer;
	private String title;
	private String content;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;
	private String category;
	private String keyword;
	private int cmt;
	private String cateName;

}
