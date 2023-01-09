package com.learntime.app.chat.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learntime.app.chat.dao.ChatDao;
import com.learntime.app.chat.vo.ChatVo;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatDao chatDao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int chatRoomMake(Map<String, String> map) {
		
		return chatDao.chatRoomMake(sst,map);
	}

	@Override
	public int chatSend(Map<String, String> map) {
		
		return chatDao.chatSend(sst,map);
	}

	@Override
	public List<ChatVo> chatList(String no) {
		
		return chatDao.chatList(sst,no);
	}

	@Override
	public List<ChatVo> chatRoomHistory(String no) {
		
		return chatDao.chatRoomHistory(sst,no);
	}

	@Override
	public List<ChatVo> chatMyList(String no) {
		
		return chatDao.chatMyList(sst,no);
				
	}

}
