package com.learntime.app.admin.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.learntime.app.admin.dao.BannerDao;
import com.learntime.app.admin.vo.BannerVo;

@Service
public class BannerServiceImpl implements BannerService{
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	@Qualifier("bannerDaoImpl")
	private BannerDao dao;
	
	@Override
	public int insertBanner(BannerVo vo) {
		return dao.insertBanner(sst, vo);
	}

	@Override
	public List<Map<String, Object>> selectBannerList() {
		return dao.selectBannerList(sst);
	}

	@Override
	public Map<String, Object> selectBannerOne(String no) {
		return dao.selectBannerOne(sst, no);
	}

	@Override
	public int editBanner(BannerVo vo) {
		return dao.editBanner(sst, vo);
	}

	@Override
	public int disableBanner(String no) {
		return dao.disableBanner(sst, no);
	}

	@Override
	public int enableBanner(String no) {
		return dao.enableBanner(sst, no);
	}

	@Override
	public int deleteBanner(String no) {
		return dao.deleteBanner(sst, no);
	}

	@Override
	public List<Map<String, Object>> selectBannerListMain() {
		return dao.selectBannerListMain(sst);
	}

}
