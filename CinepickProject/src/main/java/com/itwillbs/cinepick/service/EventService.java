package com.itwillbs.cinepick.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.EventMapper;
import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;

@Service
public class EventService {
	
	@Autowired
	private EventMapper mapper;

	
	// 이벤트 카테고리 별 목록
	public List<EventVO> selectEventList(int eventCate_Idx) {
		return mapper.selectEventList(eventCate_Idx);
	}

	// 이벤트 카테고리 목록 
	public List<EventCateVO> selectEventCateList() {
		return mapper.selectEventCateList();
	}
	
	// 이벤트 상세보기 
	public List<EventVO> getEvent(String event_idx) {
		return mapper.selectEvent(event_idx);
	}

	// 영화 이벤트 상세 목록 
	public List<EventVO> getEventDetailList(int startRow, int listLimit, int eventCate_Idx) {
		return mapper.selectEventDetailList(startRow, listLimit, eventCate_Idx);
	}

	// 영화 이벤트 목록 수 조회
	public int getMovieEventListCount(int eventCate_Idx) {
		return mapper.selectMovieEventListCount(eventCate_Idx);
	}

	// 극장 메인 페이지에 극장 이벤트 출력
	public List<EventVO> getEventList() {
		return mapper.selectTheaterEventList();
	}
	
	
	
	

}
