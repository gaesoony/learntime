package com.learntime.app.makegrass.service;

import org.springframework.stereotype.Service;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Service
public interface MakegrassService {

	//게시글 작성
	public int write(MakegrassVo vo);

}
