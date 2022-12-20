package com.learntime.app.question.vo;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.learntime.app.category.CategoryList;

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
	
	public void cateNum(CategoryList cl, HttpServletRequest req) {
		this.cateNo = cl.cateList(req,this.cateNo);
	}

	
		


}





	
	
	

