package com.learntime.app.chat.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.learntime.app.chat.vo.ChatVo;

@Repository
public class ChatDaoImpl implements ChatDao {
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int chatRoomMake(SqlSessionTemplate sst, Map<String, String> map) {
		
		return sst.insert("chatMapper.chatRoomMake",map);
	}

	@Override
	public int chatSend(SqlSessionTemplate sst, Map<String, String> map) {
		
		return sst.insert("chatMapper.chatSend",map);
	}

	@Override
	public List<ChatVo> chatList(SqlSessionTemplate sst, String no) {
		
		return sst.selectList("chatMapper.chatList",no);
	}

	@Override
	public List<ChatVo> chatRoomHistory(SqlSessionTemplate sst, String no) {
		
		return sst.selectList("chatMapper.chatRoomHistory",no);
	}

	@Override
	public List<ChatVo> chatMyList(SqlSessionTemplate sst, String no) {
		return sst.selectList("chatMapper.chatMyList",no);
	}

}
