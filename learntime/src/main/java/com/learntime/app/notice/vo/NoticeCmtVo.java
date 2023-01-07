package com.learntime.app.notice.vo;

import java.sql.Timestamp;

import lombok.Data;
@Data
public class NoticeCmtVo {
	
	private int no;
	private int nNo;
	private String writer;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;
	private String content;
	private int depth;
	private int group;

}
