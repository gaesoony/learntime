package com.learntime.app.question.vo;

import java.sql.Timestamp;

import lombok.Data;
@Data
public class QuestionVo {
	private int no;
	private int cateNo;
	private int writer;
	private String title;
	private String content;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;

}
