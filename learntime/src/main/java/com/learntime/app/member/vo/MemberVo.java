package com.learntime.app.member.vo;

import lombok.Data;

@Data
public class MemberVo {
	
	private String no;
	private String id;
	private String pwd;
	private String phone;
	private String nick;
	private String enrollDate;
	private String quitYn;
	private String modifyDate;
	private String imgPath;
	private String intro;
	private String accumToken;
	private String holdToken;
	private String[] teckStackNo;
	private String adminYn;
	

}
