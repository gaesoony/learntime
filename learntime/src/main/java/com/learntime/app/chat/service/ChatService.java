package com.learntime.app.chat.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.chat.vo.ChatVo;

public interface ChatService {
	
	// 채팅방 생성
	int chatRoomMake(Map<String, String> map);
	
	
	// 채팅 보내기
	int chatSend(Map<String, String> map);

	//마이페이지 채팅 리스트
	List<ChatVo> chatList(String no);

	//마이페이지 채팅 내역
	List<ChatVo> chatRoomHistory(String no);

	//마이페이지 채팅 리스트(홈에서)
	List<ChatVo> chatMyList(String no);

}
