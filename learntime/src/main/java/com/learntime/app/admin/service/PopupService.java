package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.admin.vo.PopupVo;

public interface PopupService {

	List<Map<String, Object>> selectPopupList();

	Map<String, Object> selectPopupOne(String no);

	int editPopup(PopupVo vo);

	int disablePopup(String no);

	int enablePopup(String no);

	int deletePopup(String no);

	int insertPopup(PopupVo vo);

	List<Map<String, Object>> selectPopupListMain();




}
