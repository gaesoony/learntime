package com.learntime.app.makegrass.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.learntime.app.makegrass.vo.MakegrassVo;

@Repository
public class MakegrassDaoImpl implements MakegrassDao {

	//게시글 작성
	@Override
	public int insertMakegrass(SqlSessionTemplate sst, MakegrassVo vo) {
		System.out.println("디에이오에서 작성 : " + vo);
		return sst.insert("makegrassMapper.insertMakegrass", vo);
	}

	@Override
	public int insertTag(SqlSessionTemplate sst, String[] tag) {
		System.out.println("디에이오에서 태그1 : " + tag);
		return sst.insert("makegrassMapper.insertTag", tag);
	}
	

	@Override
	public int insertMakegrassTag(SqlSessionTemplate sst, String[] tag) {
		System.out.println("디에이오에서 태그2 : " + tag);
		return sst.insert("makegrassMapper.insertMakegrassTag", tag);
	}

	@Override
	public List<Map<String, Object>> selectList(SqlSessionTemplate sst, MakegrassVo vo) {
		return sst.selectList("makegrassMapper.selectList", vo);
	}

	//게시글 상세조회
	@Override
	public Map<String, Object> detail(SqlSessionTemplate sst, String ano) {
		return sst.selectOne("makegrassMapper.detail", ano);
	}

	//게시글 삭제
	@Override
	public int delete(SqlSessionTemplate sst, String no) {
		return sst.update("makegrassMapper.delete", no);
	}

	//조회수
	@Override
	public int updateHit(SqlSessionTemplate sst, String no) {
		return sst.update("makegrassMapper.updateHit", no);
	}

	//게시글 수정
	@Override
	public int edit(SqlSessionTemplate sst, MakegrassVo vo) {
		System.out.println("디에이오에서 : " + vo);
		return sst.update("makegrassMapper.edit", vo);
	}

	//상세조회 내 해시태그 리스트
	@Override
	public List<Map<String, Object>> tagList(SqlSessionTemplate sst, String ano) {
		return sst.selectList("makegrassMapper.selectTagList", ano);
	}

	//공부인증 랭킹 리스트
	@Override
	public List<Map<String, Object>> makegrassLankList(SqlSessionTemplate sst) {
		return sst.selectList("makegrassMapper.makegrassLankList");
	}

	//리스트 내 팔로잉 리스트
	@Override
	public List<Map<String, Object>> followingList(SqlSessionTemplate sst, String no) {
		return sst.selectList("makegrassMapper.followingList", no);
	}

	//마이페이지 메인 리스트
	@Override
	public List<Map<String, Object>> selectMypageList(SqlSessionTemplate sst, MakegrassVo vo) {
		return sst.selectList("makegrassMapper.mypageList", vo);
	}

}
