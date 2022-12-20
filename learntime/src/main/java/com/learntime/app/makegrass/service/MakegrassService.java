package com.learntime.app.makegrass.service;

import org.springframework.stereotype.Service;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Service
public interface MakegrassService {

	int write(MakegrassVo vo);

}
