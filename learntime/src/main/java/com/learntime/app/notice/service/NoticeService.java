package com.learntime.app.notice.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;

public interface NoticeService {
	
	public int noticeWrite(NoticeVo vo);

	public List<NoticeVo> selectQuestionList(Map<String, String> map,PageVo pv);

	public int selectCount();

}
