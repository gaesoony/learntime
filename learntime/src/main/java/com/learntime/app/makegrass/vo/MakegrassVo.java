package com.learntime.app.makegrass.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MakegrassVo {

	private int no;
	private String writer;
	private String title;
	private String content;
	private String learnTime;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;
	private int hit;
}
