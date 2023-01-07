package com.learntime.app.admin.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PopupVo {
	
	private String no;
	private String title;
	private String visitor;
	private String location;
	private String changeName;
	private String link;
	private String enrollDate;
	private String status;
	private String startDate;
	private String endDate;
	private List<MultipartFile> popup;

	public boolean isEmpty() {
		
		System.out.println(popup);
		
		if(popup.get(0).isEmpty()) return true;
		if(popup == null) return true;
		if(popup.size() == 0) return true;
	
		return false;
	
	}

}
