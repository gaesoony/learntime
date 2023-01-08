package com.learntime.app.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.chat.service.ChatService;
import com.learntime.app.chat.vo.ChatVo;



@Controller
public class ChatController {
	
	@Autowired
	private ChatService chatService;
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
		
		return "메세지 전송";
	}
	
	
	
	
	//채팅 내역
		@ResponseBody
		@PostMapping(value="chatRoomHistory",produces = "application/text;charset=utf8")
		public String chatRoomHistory(String sendNo) {
			
			List<ChatVo> chatlist=chatService.chatList(sendNo);
			List<ChatVo> chatRoomHistory = chatService.chatRoomHistory(sendNo);
			
			Gson gson = new Gson();
	        HashMap<String, Object> map = new HashMap<String, Object>();
	        
	        map.put("chatRoomHistory", chatRoomHistory);
	        map.put("chatlist", chatlist);

	        String jsonString = gson.toJson(map);
	        
	        return jsonString;
		}
	

}
