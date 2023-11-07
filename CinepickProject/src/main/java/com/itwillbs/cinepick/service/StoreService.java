package com.itwillbs.cinepick.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.EventMapper;
import com.itwillbs.cinepick.mapper.StoreMapper;
import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.StoreCateVO;
import com.itwillbs.cinepick.vo.StoreVO;

@Service
public class StoreService {
	
	@Autowired
	private StoreMapper mapper;

	
	// 스토어 카테고리 별 목록
	public List<StoreVO> selectStoreList(int storeCate_Idx) {
		return mapper.selectStoreList(storeCate_Idx);
	}

	// 스토어 카테고리 목록 
	public List<StoreCateVO> selectStoreCateList() {
		return mapper.selectStoreCateList();
	}
	
	// 스토어 상세보기 
	public List<StoreVO> getStore(String store_idx) {
		return mapper.selectStore(store_idx);
	}

	// 패키지 스토어 상세 목록 
	public List<StoreVO> getStoreDetailList(int storeCate_Idx) {
		return mapper.selectStoreDetailList(storeCate_Idx);
	}

	//	패키지 스토어 목록 수 조회
//	public int getPackageStoreListCount(int storeCate_Idx) {
//		return mapper.selectPackageStoreListCount(storeCate_Idx);
//	}
	
	// 영화 이벤트 목록 수 조회
//	public int getMovieEventListCount(int eventCate_Idx) {
//		return mapper.selectMovieEventListCount(eventCate_Idx);
//	}
	

}
