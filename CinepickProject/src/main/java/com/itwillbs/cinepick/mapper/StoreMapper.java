package com.itwillbs.cinepick.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.StoreCateVO;
import com.itwillbs.cinepick.vo.StoreVO;

@Mapper
public interface StoreMapper {

	// 스토어 카테고리별 조회 
	List<StoreVO> selectStoreList(@RequestParam("storeCate_Idx") int storeCate_Idx);

	// 스토어 카테고리 전체 조회
	List<StoreCateVO> selectStoreCateList();

	// 스토어 상세 보기
	List<StoreVO> selectStore(String store_idx);
	
	// 패키지 스토어 상세 조회
	List<StoreVO> selectStoreDetailList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("storeCate_Idx") int storeCate_Idx);

	// 패키지 스토어 목록 수
	int selectStoreListCount(@Param("storeCate_Idx") int storeCate_Idx);













	



	

}
