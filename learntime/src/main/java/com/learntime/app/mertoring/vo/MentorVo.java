package com.learntime.app.mertoring.vo;

import lombok.Data;

@Data
public class MentorVo {
	//멘토 부분
	private String no;
	private String writer;
	private String writerImg;
	private String nick;
	private String cateNo;
	private String email;
	private String name;
	private String phoneNo;
	private String intro;
	private String link;
	private String enrollDate;
	private String modifyDate;
	private String accountBank;
	private String accountNo;
	
	//멘토링 부분
	private String job;
	private String jobName;
	private String currentJob;
	private String title;
	private String career;
	private String employedYn;
	private String price;
	private String maxHour;
	private String welcomePost;
	private String writeDate;
	private String openYn;
	private String hit;
	private String detail;
	private String mEmail;
	private String mPhoneNo;
	
	//화면 나올부분
	private String star;
	private String reviewCnt;

}
