package com.learntime.app.qna.vo;

import lombok.Data;

@Data
public class QnaAnswerVo {

	private String no;
	private String qNo;
	private String writer;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String modifyDate;
	private String selectYn;
	private String depth;
	private String group;
}
