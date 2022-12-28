package com.learntime.app.community.vo;

import lombok.Data;

@Data
public class BoardFilterVo {
	private String cate;
	private String search;
	private String page;
	private String sort;
}
