package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.learntime.app.notice.vo.NoticeCmtVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;

public interface NoticeService {
	
	public int noticeWrite(NoticeVo vo);

	public List<NoticeVo> selectNoticeList(Map map);

	public int selectCount();

	public int cmtCnt();

	public int updateHit(NoticeVo vo);

	public NoticeVo selectOne(NoticeVo vo);

	public List<NoticeVo> selectNoticeListAll(Map map);
	
	public int noticeCmtWrite(NoticeCmtVo ncv);

	

}
