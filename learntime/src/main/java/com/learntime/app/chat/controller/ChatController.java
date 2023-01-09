package com.learntime.app.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.alarm.service.AlarmService;
import com.learntime.app.alarm.vo.AlarmVo;
import com.learntime.app.chat.service.ChatService;
import com.learntime.app.chat.vo.ChatVo;



@Controller
public class ChatController {
	
	@Autowired
	private ChatService chatService;
	
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
	
	//방생성
	@ResponseBody
	@PostMapping(value="chatRoomMake",produces = "application/text;charset=utf8")
	public String chatRoomMake(String sendNo, String receNo) {
		
		Map<String, String>map=new HashMap<String, String>();
		map.put("sendNo", sendNo);
		map.put("receNo", receNo);
		
		int result = chatService.chatRoomMake(map);
		
		return "채팅방이 생성 되었습니다.";
	}
	
	//채팅 보내기
	@ResponseBody
	@PostMapping(value="chat",produces = "application/text;charset=utf8")
	public String chatSend(String sendNo, String receNo, String message) {
		
		Map<String, String>map=new HashMap<String, String>();
		map.put("sendNo", sendNo);
		map.put("receNo", receNo);
		map.put("message", message);
		
		int result = chatService.chatSend(map);
		
		//new AlarmVo(알람을 받는 회원 번호,알람을 보낸 회원 번호,"알람타입 1~7","보내고싶은 메세지 ")
		//알람타입 (1=공지/2=팔로우/3=댓글/4=멘토링/5=스터디 모집/6=디엠/7=답변채택)
		//AlarmVo alarmVo= new AlarmVo(sendMno, receMno, alarmTypeNo, massage);
		AlarmVo alarmVo=new AlarmVo(receNo,sendNo,"6","메세지를 보냈어요");
		alarmService.insert(alarmVo);
		
		
		return alarmVo.getNo();
	}
	
	
	
	
	//채팅 내역
		@ResponseBody
		@PostMapping(value="chatRoomHistory",produces = "application/text;charset=utf8")
		public String chatRoomHistory(String sendNo, String receNo) {
			
			List<ChatVo> chatlist=chatService.chatList(receNo);
			List<ChatVo> chatRoomHistory = chatService.chatRoomHistory(sendNo);
			
			Gson gson = new Gson();
	        HashMap<String, Object> map = new HashMap<String, Object>();
	        
	        map.put("chatRoomHistory", chatRoomHistory);
	        map.put("chatlist", chatlist);

	        String jsonString = gson.toJson(map);
	        
	        return jsonString;
		}
	

}
