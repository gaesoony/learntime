package com.learntime.app.alarm.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AlarmVo {
	
	private String no;
	private String sendMno;
	private String receMno;
	private String alarmTypeNo;
	private String massage;
	private String alarmTime;
	private String checkTime;
	private String checkYn;
	
	
	public AlarmVo(String sendMno, String receMno, String alarmTypeNo, String massage) {
		super();
		this.sendMno = sendMno;
		this.receMno = receMno;
		this.alarmTypeNo = alarmTypeNo;
		this.massage = massage;
	}
	
	
	
	
	

}
