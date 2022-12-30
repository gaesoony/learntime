package com.learntime.app.badge.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BadgeVo {
	
	private String no;
	private String name;
	private String info;
	private MultipartFile imgPath;
	private String imgName;
	
	public boolean isEmpty() {
	
		if(imgPath.isEmpty()){return true;}
		return false;
	}
	

}
