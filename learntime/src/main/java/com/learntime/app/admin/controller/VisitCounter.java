package com.learntime.app.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.learntime.app.admin.dao.VisitCntDao;
import com.learntime.app.admin.vo.VisitorCntVo;


public class VisitCounter implements HttpSessionListener{
	
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0){
		System.out.println("들어옴?");
        HttpSession session = arg0.getSession();
        WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
        //등록되어있는 빈을 사용할수 있도록 설정해준다
        HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();

        VisitCntDao visitCntDao = (VisitCntDao)wac.getBean("visitCntDao");
        
        VisitorCntVo vo = new VisitorCntVo();
        vo.setIp(req.getRemoteAddr());
        vo.setAgent(req.getHeader("User-Agent"));//브라우저 정보
        vo.setRefer(req.getHeader("referer"));//접속 전 사이트 정보

        visitCntDao.insertVisitor(vo);
    }
	


	@Override
    public void sessionDestroyed(HttpSessionEvent arg0){
        //TODO Auto-generated method stub
    }

}
