package com.learntime.app.study.vo;

import lombok.Data;

@Data
public class GroupVo {
	
	private String no;
	private String writer;
	private String gTypeNo;
	private String gWayNo;
	private String gPeriodNo;
	private String numberPeople;
	private String[] techStackNo;
	private String techStackNoList;
	private String startDate;
	private String startTime;
	private String endTime;
	private String title;
	private String intro;
	private String place;
	private String address;
	private String hit;
	private String closingYn;
	private String deleteYn;
	private String modifyDate;
	private String enrollDate;
	

	private String[] question;
	
	private String[] tag;
	
	public void strTechStachNoList() {
		this.techStackNoList = String.join(",", techStackNo); 
	}
	

}
