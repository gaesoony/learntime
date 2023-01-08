package com.learntime.app.faq.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.faq.vo.FaqVo;
import com.learntime.app.question.vo.PageVo;


@Repository
public class FaqDao {

	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {

		return sst.insert("faqMapper.faqWrite",vo);
	}

	public int selectCount(SqlSessionTemplate sst) {

		
		return sst.selectOne("faqMapper.selectCount");
	}

	public List<FaqVo> selectFaqList(SqlSessionTemplate sst, Map map) {
		
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
		System.out.println("=================");
		System.out.println(map);
		
		return sst.selectList("faqMapper.faqList",map);
	}

	public FaqVo selectOne(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.selectOne("faqMapper.selectOne",vo);
	}

}
