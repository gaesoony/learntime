package com.learntime.app.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.learntime.app.admin.vo.ManagerVo;

public class AdminLoginCheckInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//로그인 유무 체크
		HttpSession session = request.getSession(false);
		if(session != null) {
			ManagerVo loginManager = (ManagerVo) session.getAttribute("loginManager");
			
			if(loginManager == null) {
				request.getRequestDispatcher("/admin/manager/wrong").forward(request, response);
				System.out.println("admin interceptor~~~");
				return false;
			}
		}
		return true;
	}

}
