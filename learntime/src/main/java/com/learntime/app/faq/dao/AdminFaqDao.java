package com.learntime.app.faq.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;

@Repository
public class AdminFaqDao {

	public int selectCount(SqlSessionTemplate sst) {
		return sst.selectOne("adminFaqMapper.selectCount");
	}

	public List<FaqVo> selectFaqList(SqlSessionTemplate sst, Map map) {
		
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
		return sst.selectList("adminFaqMapper.faqList",map,rb);
	}

	public FaqVo selectOne(SqlSessionTemplate sst, FaqVo vo) {
		return sst.selectOne("adminFaqMapper.selectOne",vo);
	}

	public int deleteOne(SqlSessionTemplate sst, List<Integer> list) {
		
		int count = 0;
		for(int i = 0; i<list.size(); i++) {
			count+= sst.update("adminFaqMapper.deleteOne",list.get(i));
		}
		return count;
		
	}

}
