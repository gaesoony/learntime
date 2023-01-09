package com.learntime.app.mertoring.vo;

import lombok.Data;

@Data
public class MentoringFilterVo {
	
	private String[] categoryArr;
	private String search;
	private String category;
	private String sorting;
	private String page;

}
