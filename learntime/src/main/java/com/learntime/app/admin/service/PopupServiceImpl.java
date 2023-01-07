package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.dao.BannerDao;
import com.learntime.app.admin.dao.PopupDao;
import com.learntime.app.admin.vo.PopupVo;

@Service
public class PopupServiceImpl implements PopupService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	@Qualifier("popupDaoImpl")
	private PopupDao dao;
	

	@Override
	public int insertPopup(PopupVo vo) {
		return dao.insertPopup(sst, vo);
	}


	@Override
	public List<Map<String, Object>> selectPopupList() {
		return dao.selectPopupList(sst);
	}

	@Override
	public Map<String, Object> selectPopupOne(String no) {
		return dao.selectPopupOne(sst, no);
	}

	@Override
	public int editPopup(PopupVo vo) {
		return dao.editPopup(sst, vo);
	}

	@Override
	public int disablePopup(String no) {
		return dao.disablePopup(sst, no);
	}

	@Override
	public int enablePopup(String no) {
		return dao.enablePopup(sst, no);
	}

	@Override
	public int deletePopup(String no) {
		return dao.deletePopup(sst, no);
	}


	@Override
	public List<Map<String, Object>> selectPopupListMain() {
		return dao.selectPopupListMain(sst);
	}

}
