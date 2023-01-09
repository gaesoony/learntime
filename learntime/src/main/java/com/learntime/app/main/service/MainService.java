package com.learntime.app.main.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.main.vo.MainVo;

public interface MainService {
	
	//런타임 메인페이지 조회
	public MainVo selectMain();

	//스터디 리스트 조회
	public List<Map<String, String>> selectGroupList();
	
	

}
