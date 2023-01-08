package com.learntime.app.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.learntime.app.admin.vo.VisitorCntVo;

@Repository
public class VisitCntDao {
	
	@Autowired
	private SqlSessionTemplate sst;

	public int insertVisitor(VisitorCntVo vo) {
		System.out.println("방문자 인설트!");
		System.out.println("vo:"+vo);
		System.out.println("인서트비지터sst:"+sst);
		if(vo != null) {
			int result = sst.insert("adminDashboardMapper.insertVisitor", vo);	
			System.out.println(result);
			return 1;
		}
		
		return 1;
	}

}
