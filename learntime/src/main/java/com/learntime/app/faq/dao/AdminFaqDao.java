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

	public int deleteList(SqlSessionTemplate sst, List<String> list) {
		System.out.println("호출!!!!");
		int no = sst.update("adminFaqMapper.deleteList",list);
		System.out.println(no);
		return no;
		
	}
	public int deleteOne(SqlSessionTemplate sst, int check) {
		System.out.println("호출!!!!");
		int no = sst.update("adminFaqMapper.deleteOne",check);
		System.out.println(no);
		return no;
		
	}

}
