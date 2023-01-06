package com.learntime.app.alarm.service;

import java.util.List;

import com.learntime.app.alarm.vo.AlarmVo;

public interface AlarmService {
	//알람 인설트
	int insert(AlarmVo alarmVo);
	//알람 인설트 조회
	List<AlarmVo> listMember(String no);
	
	//알람 삭제
	int delete(String no);

	


}
