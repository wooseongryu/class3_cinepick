package com.itwillbs.cinepick.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;

@Mapper
public interface EventMapper {

	// 이벤트 카테고리별 조회 
	List<EventVO> selectEventList(@RequestParam("eventCate_Idx") int eventCate_Idx);

	// 이벤트 카테고리 전체 조회
	List<EventCateVO> selectEventCateList();

	// 이벤트 상세 보기
	List<EventVO> selectEvent(String event_idx);
	
	// 영화 이벤트 상세 조회
	List<EventVO> selectEventDetailList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("eventCate_Idx") int eventCate_Idx);

	// 영화 이벤트 목록 수
	int selectMovieEventListCount(@Param("eventCate_Idx") int eventCate_Idx);
	



	

}
