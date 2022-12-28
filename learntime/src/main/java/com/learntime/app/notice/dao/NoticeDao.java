package com.learntime.app.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
@Repository
public class NoticeDao {

	public int noticeWrite(SqlSessionTemplate sst, NoticeVo vo) {
		
		return sst.insert("noticeMapper.noticeWrite",vo);
	}

	
	public List<NoticeVo> selectNoticeList(SqlSessionTemplate sst,NoticeVo vo, PageVo pv) {
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("noticeMapper.noticeList",vo,rb);
	}


	public int selectCount(SqlSessionTemplate sst) {
		return sst.selectOne("noticeMapper.selectCount");
	}


	public int cmtCnt(SqlSessionTemplate sst) {
		
		return sst.selectOne("noticeMapper.selectCmtCnt");
	}


	public int updateHit(SqlSessionTemplate sst, NoticeVo vo) {
		
		return sst.update("noticeMapper.updateHit",vo);
	}


	public NoticeVo selectOne(SqlSessionTemplate sst, NoticeVo vo) {
		
		return sst.selectOne("noticeMapper.selectOne",vo);
	}


	public List<NoticeVo> selectNoticeListAll(SqlSessionTemplate sst, NoticeVo vo, PageVo pv) {
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("noticeMapper.noticeListAll",vo,rb);
	}


//	public List<NoticeVo> selectsearchOne(SqlSessionTemplate sst, NoticeVo vo, PageVo pv) {
//		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
//		int limit = pv.getBoardLimit();
//		RowBounds rb = new RowBounds(offset, limit);
//
//		return sst.selectList("noticeMapper.noticeList",vo,rb);
//	}

}
