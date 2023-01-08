package com.learntime.app.chat.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ChatVo {
	
	private String no;
	private String sendMno;
	private String receMno;
	private String content;
	private Date enrollDate;
	private String deleteYn;
	private String nick;
	private String imgPath;
	

}
