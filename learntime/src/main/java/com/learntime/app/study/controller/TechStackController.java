package com.learntime.app.study.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.study.service.StudyService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class TechStackController {
	
	@Autowired
	private StudyService service;
	
	@RequestMapping(value = "/study/techStack", produces = "application/text; charset=utf8")
	@ResponseBody
	public String selectTechStackListByType(String type) {
		
		//log.info("타입 : " + type);
		
		List<Map<String, String>> result = service.selectTechStackListByType(type);
		//log.info("결과 : " + result);
		
		Gson gson = new Gson();
	    HashMap<String, Object> map = new HashMap<String, Object>();
	    
	    map.put("result", result);
	    
	    String jsonString = gson.toJson(map);
		return jsonString;
	}

}
