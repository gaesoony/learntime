package com.learntime.app.alarm.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.alarm.vo.AlarmVo;

public interface AlarmDao {

	int insert(SqlSessionTemplate sst, AlarmVo alarmVo);

	List<AlarmVo> listMember(SqlSessionTemplate sst, String no);

	int delete(SqlSessionTemplate sst, String no);

}
