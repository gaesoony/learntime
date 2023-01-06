package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import com.learntime.app.admin.vo.BannerVo;

public interface BannerService {

	public int insertBanner(BannerVo vo);

	public List<Map<String, Object>> selectBannerList();

	public Map<String, Object> selectBannerOne(String no);

	public int editBanner(BannerVo vo);

	public int disableBanner(String no);

	public int enableBanner(String no);

	public int deleteBanner(String no);

	public List<Map<String, Object>> selectBannerListMain();
}
