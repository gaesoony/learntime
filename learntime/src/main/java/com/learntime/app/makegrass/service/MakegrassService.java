package com.learntime.app.makegrass.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Service
public interface MakegrassService {

	//게시글 작성
	public int write(MakegrassVo vo);

	public List<MakegrassVo> selectList(MakegrassVo vo);

	//게시글 상세조회
	public MakegrassVo detail(String no);

}
