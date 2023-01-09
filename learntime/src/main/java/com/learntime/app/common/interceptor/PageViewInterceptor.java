package com.learntime.app.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import com.learntime.app.admin.dao.AdminDashboardDao;
import com.learntime.app.admin.vo.VisitorCntVo;

public class PageViewInterceptor implements HandlerInterceptor{
	
	@Autowired
	private AdminDashboardDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
        VisitorCntVo vo = new VisitorCntVo();
        vo.setIp(request.getRemoteAddr());
        vo.setAgent(request.getHeader("User-Agent"));//브라우저 정보
        vo.setRefer(request.getHeader("referer"));//접속 전 사이트 정보
		
        System.out.println(vo);
        
		//방문자 insert
		int result = dao.insertPageView(sst, vo);
		
		if(result == 1) {
			return true;
		}else {
			request.getRequestDispatcher("/error").forward(request, response);
			System.out.println("페이지뷰 에러");
			return false;
		}
		
	}
	
}
