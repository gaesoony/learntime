package com.learntime.app.chat.server;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.learntime.app.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ChatServer extends TextWebSocketHandler {
	
	private MemberVo curLoginMemberNo(WebSocketSession session) {
		
		Map<String,Object> map=session.getAttributes();
		
		MemberVo loginMember = (MemberVo)map.get("loginMember");
	
		return loginMember;
		
	}
	
	
	private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	
	
	//연결 완료 이후에 동작하는 메소드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		
		MemberVo loginMemberNo = curLoginMemberNo(session);
		
		if(loginMemberNo!= null) {
			userSessionsMap.put(loginMemberNo.getNo(),session);
			
			log.info("[연결] {}" , loginMemberNo);
			

		}
		
	}
	
	//발신 //session.sendMessage(메세지);
	
	//메세지가 수신되었을 때 동작
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		log.info("[수신] {} : {}" , session , message);
		
		String msg = message.getPayload();
		
		log.info("msg="+msg);
		
		String[]alarmMessage= msg.split("#");
		String alarmNo=alarmMessage[0];//알람 번호
		String alarmType=alarmMessage[1];//알람 타입 
		String receMemberNo=alarmMessage[2];//알람을 보낸 사람 
		String sendMemberNo=alarmMessage[3];//받는 놈 
		String alarmMsg=alarmMessage[4];//알람 메시지
		

		TextMessage alarm=new TextMessage(alarmNo+"#"+alarmType+"#"+ curLoginMemberNo(session).getNick() +"#"+alarmMsg);
		//받는 놈
		
		WebSocketSession receSession = userSessionsMap.get(receMemberNo);
		
		if(receSession!=null) {
			receSession.sendMessage(alarm);
		};
	
		
	}
	
	//소켓 연결 종료 이후에 동작
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
	
		


		MemberVo loginMemberNo = curLoginMemberNo(session);
		
		if(loginMemberNo!= null) {
			userSessionsMap.remove(loginMemberNo.getNo());
			
			log.info("[종료] {} : {} " , loginMemberNo , status);

		}
		
	}

	
	
	

}
