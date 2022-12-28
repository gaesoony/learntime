package com.learntime.app.mystudy.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProfileVo {
	
	
	private String no;
	private String name;
	private String changeName;
	private List<MultipartFile> profile;

	public boolean isEmpty() {
		
		System.out.println(profile);
		
		if(profile.get(0).isEmpty()) return true;
		if(profile == null) return true;
		if(profile.size() == 0) return true;
	
		return false;
	
	}

}
