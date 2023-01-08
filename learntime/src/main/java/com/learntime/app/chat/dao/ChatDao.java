package com.learntime.app.chat.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.chat.vo.ChatVo;

public interface ChatDao {

	int chatRoomMake(SqlSessionTemplate sst, Map<String, String> map);

	int chatSend(SqlSessionTemplate sst, Map<String, String> map);

	List<ChatVo> chatList(SqlSessionTemplate sst, String no);

	List<ChatVo> chatRoomHistory(SqlSessionTemplate sst, String no);

}
