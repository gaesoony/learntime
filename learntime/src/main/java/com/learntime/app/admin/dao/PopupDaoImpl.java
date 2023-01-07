package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.admin.vo.PopupVo;

@Repository
public class PopupDaoImpl implements PopupDao{

	@Override
	public int insertPopup(SqlSessionTemplate sst, PopupVo vo) {
		return sst.insert("popupMapper.insertPopup", vo);
	}

	@Override
	public List<Map<String, Object>> selectPopupList(SqlSessionTemplate sst) {
		return sst.selectList("popupMapper.selectPopupList");
	}

	@Override
	public Map<String, Object> selectPopupOne(SqlSessionTemplate sst, String no) {
		return sst.selectOne("popupMapper.selectPopupOne", no);
	}

	@Override
	public int editPopup(SqlSessionTemplate sst, PopupVo vo) {
		return sst.update("popupMapper.editPopup", vo);
	}

	@Override
	public int disablePopup(SqlSessionTemplate sst, String no) {
		return sst.update("popupMapper.disablePopup", no);
	}

	@Override
	public int enablePopup(SqlSessionTemplate sst, String no) {
		return sst.update("popupMapper.enablePopup", no);
	}

	@Override
	public int deletePopup(SqlSessionTemplate sst, String no) {
		return sst.update("popupMapper.deletePopup", no);
	}

	@Override
	public List<Map<String, Object>> selectPopupListMain(SqlSessionTemplate sst) {
		return sst.selectList("popupMapper.selectPopupListMain");
	}

}
