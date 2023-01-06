package com.learntime.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.admin.vo.BannerVo;

@Repository
public class BannerDaoImpl implements BannerDao{
	
	
	@Override
	public int insertBanner(SqlSessionTemplate sst, BannerVo vo) {
		return sst.insert("bannerMapper.insertBanner", vo);
	}

	@Override
	public List<Map<String, Object>> selectBannerList(SqlSessionTemplate sst) {
		return sst.selectList("bannerMapper.selectBannerList");
	}

	@Override
	public Map<String, Object> selectBannerOne(SqlSessionTemplate sst, String no) {
		return sst.selectOne("bannerMapper.selectBannerOne", no);
	}

	@Override
	public int editBanner(SqlSessionTemplate sst, BannerVo vo) {
		return sst.update("bannerMapper.editBanner", vo);
	}

	@Override
	public int disableBanner(SqlSessionTemplate sst, String no) {
		return sst.update("bannerMapper.disableBanner", no);
	}

	@Override
	public int enableBanner(SqlSessionTemplate sst, String no) {
		return sst.update("bannerMapper.enableBanner", no);
	}

	@Override
	public int deleteBanner(SqlSessionTemplate sst, String no) {
		return sst.update("bannerMapper.deleteBanner", no);
	}

	@Override
	public List<Map<String, Object>> selectBannerListMain(SqlSessionTemplate sst) {
		return sst.selectList("bannerMapper.selectBannerListMain");
	}

}
