package com.learntime.app.qna.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QnaVo {

	private int no;
	private String writer;
	private int cateNo;
	private String title;
	private String content;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;
	private int hit;
}
