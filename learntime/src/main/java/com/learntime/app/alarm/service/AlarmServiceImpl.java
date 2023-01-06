package com.learntime.app.alarm.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.alarm.dao.AlarmDao;
import com.learntime.app.alarm.vo.AlarmVo;

@Service
public class AlarmServiceImpl implements AlarmService {
	
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	@Qualifier("alarmDaoImpl")
	private AlarmDao alarmDao;

	@Override
	public int insert(AlarmVo alarmVo) {
		return alarmDao.insert(sst,alarmVo);
		
	}

	@Override
	public List<AlarmVo> listMember(String no) {
		
		return alarmDao.listMember(sst,no);
	}

	@Override
	public int delete(String no) {
		
		return alarmDao.delete(sst,no);
	}

}
