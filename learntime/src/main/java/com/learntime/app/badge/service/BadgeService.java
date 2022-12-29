package com.learntime.app.badge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.badge.dao.BadgeDao;
import com.learntime.app.badge.vo.BadgeVo;


public interface BadgeService {

	
	
	int write(BadgeVo vo);

	

}
