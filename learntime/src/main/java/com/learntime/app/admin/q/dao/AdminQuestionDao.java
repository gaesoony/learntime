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

	

	public int deleteList(SqlSessionTemplate sst, List<String> list) {
		System.out.println("호출!!!!");
		int no = sst.update("adminQuestionMapper.deleteList",list);
		System.out.println(no);
		return no;
		
	}
	public int deleteOne(SqlSessionTemplate sst, int check) {
		System.out.println("호출!!!!");
		int no = sst.update("adminQuestionMapper.deleteOne",check);
		System.out.println(no);
		return no;
		
	}
	

}
