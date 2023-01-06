package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.admin.vo.BannerVo;

public interface BannerDao {

	public int insertBanner(SqlSessionTemplate sst, BannerVo vo);

	public List<Map<String, Object>> selectBannerList(SqlSessionTemplate sst);

	public Map<String, Object> selectBannerOne(SqlSessionTemplate sst, String no);

	public int editBanner(SqlSessionTemplate sst, BannerVo vo);

	public int disableBanner(SqlSessionTemplate sst, String no);

	public int enableBanner(SqlSessionTemplate sst, String no);

	public int deleteBanner(SqlSessionTemplate sst, String no);

	public List<Map<String, Object>> selectBannerListMain(SqlSessionTemplate sst);
}
