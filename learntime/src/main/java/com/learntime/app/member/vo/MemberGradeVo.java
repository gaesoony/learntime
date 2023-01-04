package com.learntime.app.member.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data

public class MemberGradeVo {
	
	private String no;
	private String name;
	private String accumToken;
	private MultipartFile imgPath;
	private String imgName;

	
	
	
	private List<MemberGradeVo> MemberGradeVoList;
	
	

	public boolean isEmpty() {
		
		if(imgPath==null){return true;}
		
		return false;
	}
	
}
