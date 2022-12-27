package com.learntime.app.question.vo;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import lombok.Data;
@Data
public class QuestionVo {
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





	
	
	

