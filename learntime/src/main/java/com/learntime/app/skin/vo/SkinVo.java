package com.learntime.app.skin.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class SkinVo {
	
	private String no;
	private String name;
	private String info;
	private String className;
	private String price;
	private MultipartFile imgPath;
	private String imgName;
	private String deleteYn;
	
	public boolean isEmpty() {
	
		if(imgPath.isEmpty()){return true;}
		return false;
	}
	

}
