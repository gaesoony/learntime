package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.admin.vo.PopupVo;

public interface PopupDao {

	int insertPopup(SqlSessionTemplate sst, PopupVo vo);

	List<Map<String, Object>> selectPopupList(SqlSessionTemplate sst);

	Map<String, Object> selectPopupOne(SqlSessionTemplate sst, String no);

	int editPopup(SqlSessionTemplate sst, PopupVo vo);

	int disablePopup(SqlSessionTemplate sst, String no);

	int enablePopup(SqlSessionTemplate sst, String no);

	int deletePopup(SqlSessionTemplate sst, String no);

	List<Map<String, Object>> selectPopupListMain(SqlSessionTemplate sst);

}
