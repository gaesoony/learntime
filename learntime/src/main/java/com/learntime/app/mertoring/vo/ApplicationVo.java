package com.learntime.app.mertoring.vo;

import lombok.Data;

@Data
public class ApplicationVo {
	
	private String no;
	private String mentorNo;
	private String mNo;
	private String reservationDate;
	private String reservationTime;
	private String phoneNo;
	private String email;
	private String massage;
	private String price;
	private String paymentType;
	private String paymentDate;
	private String cancelYn;
	private String applyYn;
	
//추가
	private String title;
	private String mentorNick;
	private String mentorImg;
	
}
