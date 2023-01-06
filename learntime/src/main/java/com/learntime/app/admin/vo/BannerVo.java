package com.learntime.app.admin.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BannerVo {
	
	private String no;
	private String title;
	private String changeName;
	private String link;
	private String enrollDate;
	private String status;
	private String startDate;
	private String endDate;
	private String color;
	private List<MultipartFile> banner;

	public boolean isEmpty() {
		
		System.out.println(banner);
		
		if(banner.get(0).isEmpty()) return true;
		if(banner == null) return true;
		if(banner.size() == 0) return true;
	
		return false;
	
	}


}
