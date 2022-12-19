package com.learntime.app.community.vo;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data
public class BoardVo {
	
	private String No;
	private String cateNo;
	private String writer;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String modifyDate;
	private String hit;
	

}
