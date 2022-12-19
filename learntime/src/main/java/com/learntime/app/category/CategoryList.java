package com.learntime.app.category;

import javax.servlet.http.HttpServletRequest;

import com.learntime.app.question.vo.QuestionVo;

public class CategoryList {
	
	public int cateList(HttpServletRequest req, int cateNo) {
		
		String category = req.getParameter("category");
		
		if("전체".equals(category)){
			cateNo = 1;
		}else if("스터디".equals(category)) {
			cateNo = 2;
			
		}else if("공부인증".equals(category)) {
			cateNo = 3;
			
		}else if("Q&A".equals(category)) {
			cateNo = 4;
			
		}else if("멘토링".equals(category)) {
			cateNo = 5;
			
		}else if("커뮤니티".equals(category)) {
			cateNo = 6;
			
		}else if("스킨샵".equals(category)){
			cateNo = 7;
			
		}
		
		return cateNo;
		
	}

}
