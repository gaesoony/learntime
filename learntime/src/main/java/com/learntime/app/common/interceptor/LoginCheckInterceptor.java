package com.learntime.app.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.learntime.app.member.vo.MemberVo;

public class LoginCheckInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//로그인 유무 체크
		HttpSession session = request.getSession(false);
		if(session != null) {
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			if(loginMember == null) {
				request.getRequestDispatcher("/wrong").forward(request, response);
				return false;
			}
		}
		return true;
	}
}
