package com.learntime.app.admin.q.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.notice.vo.NoticeVo;
import com.learntime.app.question.vo.PageVo;
import com.learntime.app.question.vo.QuestionVo;
@Repository
public class AdminQuestionDao {

	public List<QuestionVo> selectQuestionListAd(SqlSessionTemplate sst, Map map) {
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);

		return sst.selectList("adminQuestionMapper.adminQuestionList",map,rb);
	}

	public int selectCount(SqlSessionTemplate sst) {

		return sst.selectOne("adminQuestionMapper.selectCount");
	}

	public QuestionVo selectOne(SqlSessionTemplate sst, QuestionVo vo) {
		return sst.selectOne("adminQuestionMapper.selectOne",vo);
		
	}

	

	public int deleteOne(SqlSessionTemplate sst, List<Integer> list) {
		System.out.println("dao호출!!");
		int count = 0;
		System.out.println(list.size());
		for(int i = 0; i<list.size(); i++) {
			count+= sst.update("adminQuestionMapper.deleteList",list.get(i));
			
		}
		System.out.println(count);
		return count;
	}

	

}
