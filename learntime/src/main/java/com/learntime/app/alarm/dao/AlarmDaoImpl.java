package com.learntime.app.alarm.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.alarm.vo.AlarmVo;

@Repository
public class AlarmDaoImpl implements AlarmDao {

	@Override
	public int insert(SqlSessionTemplate sst, AlarmVo alarmVo) {
		return sst.insert("alarmMapper.insert",alarmVo);
	}

	@Override
	public List<AlarmVo> listMember(SqlSessionTemplate sst, String no) {
		
		return sst.selectList("alarmMapper.listMember",no);
	}

	@Override
	public int delete(SqlSessionTemplate sst, String no) {
		
		return sst.update("alarmMapper.delete",no);
	}

}
