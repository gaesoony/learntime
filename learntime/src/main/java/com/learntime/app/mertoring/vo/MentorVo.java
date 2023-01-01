package com.learntime.app.mertoring.vo;

import lombok.Data;

@Data
public class MentorVo {
	//멘토 부분
	private String no;
	private String writer;
		//관심분야
	private String cateNo;
	private String job;
	private String email;
	private String name;
	private String phoneNo;
	private String intro;
	private String link;
	private String enrollDate;
	private String modifyDate;
	
	//멘토링 부분
	private String accountNo;
	private String title;
	private String career;
	private String employedYn;
	private String price;
	private String maxPeople;
	private String maxHour;
	private String welcomePost;
	private String writeDate;
	private String openYn;
	private String hit;

}
