package com.learntime.app.notice.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.notice.vo.NoticeVo;
@Repository
public class NoticeDao {

	public int noticeWrite(SqlSessionTemplate sst, NoticeVo vo) {
		
		return sst.insert("noticeMapper.noticeWrite",vo);
	}

}
