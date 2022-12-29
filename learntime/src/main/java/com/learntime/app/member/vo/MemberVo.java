package com.learntime.app.member.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVo {
	
	private String no;
	private String id;
	private String pwd;
	private String phone;
	private String nick;
	private String enrollDate;
	private String quitYn;
	private String modifyDate;
	private MultipartFile imgPath;
	private String intro;
	private String accumToken;
	private String holdToken;
	private String[] teckStackNo;
	private String techStackNoList;
	private String adminYn;
	private String emailAuth;
	private String imgName;
	
	
	public boolean isEmpty() {
			if(imgPath==null){return true;}
			return false;
	}
	
	public void strTechStachNoList() {
		this.techStackNoList = String.join(",", teckStackNo); 
	}
	
	

}
