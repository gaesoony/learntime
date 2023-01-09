package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;


public interface AdminNoticeService {

	public int selectCount();

	public int cmtCnt();

	public int updateHit(NoticeVo vo);

	public List<Integer> selectNoticeListAll(Map map);

	public List<Integer> selectNoticeList(Map map);

	public NoticeVo selectOne(NoticeVo vo);

	public int activate(List<Integer> list);

	public int deactivate(List<Integer> list);

	public int deleteOne(List<Integer> list);

	

}
