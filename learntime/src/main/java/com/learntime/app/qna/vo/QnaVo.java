package com.learntime.app.qna.vo;

import lombok.Data;

@Data
public class QnaVo {

	private String no;
	private String writer;
	private String cateNo;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String modifyDate;
	private String hit;
	
	private String[] tag;
	

}
