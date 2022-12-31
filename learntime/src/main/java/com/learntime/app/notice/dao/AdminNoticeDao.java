package com.learntime.app.notice.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
@Repository
public class AdminNoticeDao {

	public int selectCount(SqlSessionTemplate sst) {
		return sst.selectOne("adminNoticeMapper.selectCount");
	}

	public int cmtCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminNoticeMapper.selectCmtCnt");
	}

	public int updateHit(SqlSessionTemplate sst, NoticeVo vo) {
		return sst.update("adminNoticeMapper.updateHit",vo);
	}

	public List<NoticeVo> selectNoticeListAll(SqlSessionTemplate sst, NoticeVo vo, PageVo pv) {
		
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("adminNoticeMapper.noticeListAll",vo,rb);
	}

	public List<NoticeVo> selectNoticeList(SqlSessionTemplate sst, NoticeVo vo, PageVo pv) {
		
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("adminNoticeMapper.noticeList",vo,rb);
	}

	public NoticeVo selectOne(SqlSessionTemplate sst, NoticeVo vo) {
		return sst.selectOne("adminNoticeMapper.selectOne",vo);
	}

}