package com.learntime.app.notice.dao;

import java.util.List;
import java.util.Map;

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

	public List<NoticeVo> selectNoticeListAll(SqlSessionTemplate sst, Map map) {
	
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("adminNoticeMapper.noticeListAll",map,rb);
	}

	public List<NoticeVo> selectNoticeList(SqlSessionTemplate sst, Map map) {
		
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("adminNoticeMapper.noticeList",map,rb);
	}

	public NoticeVo selectOne(SqlSessionTemplate sst, NoticeVo vo) {
		return sst.selectOne("adminNoticeMapper.selectOne",vo);
	}

	public int updateOne(SqlSessionTemplate sst, List<Integer> list) {
		return sst.update("adminNoticeMapper.activate",list);
	}

	public int updateOne2(SqlSessionTemplate sst, List<Integer> list) {
		System.out.println("dao 호출, 비활성화!2222222");
		int no = sst.update("adminNoticeMapper.deactivate",list);
		System.out.println("dao 비활성화 실행 후"+no);
		return no;
	}

	public int updateOne3(SqlSessionTemplate sst, List<Integer> list) {
		
		return sst.update("adminNoticeMapper.delete",list);
	}

	

}
