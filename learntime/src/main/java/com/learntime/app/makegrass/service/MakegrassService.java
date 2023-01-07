package com.learntime.app.makegrass.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Service
public interface MakegrassService {

	//게시글 작성
	public int write(MakegrassVo vo);

	public List<Map<String, Object>> selectList(MakegrassVo vo);

	//게시글 상세조회
	public Map<String, Object> detail(String ano);

	//게시글 삭제
	public int delete(String no);

	//게시글 수정
	public int edit(MakegrassVo vo);

	public List<Map<String, Object>> selectLankList();

}
