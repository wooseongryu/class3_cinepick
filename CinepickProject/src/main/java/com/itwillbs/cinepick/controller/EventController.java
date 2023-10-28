package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.EventService;
import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.PageInfoVO;
import com.itwillbs.cinepick.vo.QnaVO;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	
	// 이벤트 카테고리별 간단한 목록
	@GetMapping("eventMain")
	public String eventMain(Model model, @RequestParam(defaultValue = "-1") int eventCate_Idx) {
		System.out.println("EventController - eventMain()");
		
		List<EventVO> eventList = eventService.selectEventList(eventCate_Idx);
		
		List<EventCateVO> eventCateList = eventService.selectEventCateList();
		
		model.addAttribute("eventList", eventList);
		
		model.addAttribute("eventCateList", eventCateList);
		return "cinepick/event_store/event_main";
	}
	
	// 이벤트 상세보기
	@GetMapping("eventDetail")
	public String eventDetail(@RequestParam(defaultValue = "-1") String event_idx, 
			Model model) {
		System.out.println("EventController - eventDetail()");
		
		EventVO event = eventService.getEvent(event_idx).get(0);
		
		model.addAttribute("event", event);
		
		return "cinepick/event_store/event_detail";
	}
	
	// 영화 이벤트 상세 목록
	@GetMapping("eventList")
	public String movieEventList(
						@RequestParam(defaultValue = "1") int pageNum, 
						Model model,
						@RequestParam(defaultValue = "-1") int eventCate_Idx) {
		System.out.println("EventController - movieEventList()");
		
		int listLimit = 5; // 한 페이지에서 표시할 글 목록 갯수
		
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행(레코드) 번호
		
		List<EventVO> eventDetailList = eventService.getEventDetailList(startRow, listLimit, eventCate_Idx);

		List<EventCateVO> eventCateList = eventService.selectEventCateList();
		
//		System.out.println("movieEventList : " + movieEventList);
		
		
		
		int listCount = eventService.getMovieEventListCount(eventCate_Idx);
		
		int pageListLimit = 3;
		
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		int endPage = startPage + pageListLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfoVO pageInfo = new PageInfoVO(listCount, pageListLimit, maxPage, startPage, endPage);
		
		model.addAttribute("eventDetailList", eventDetailList);
		model.addAttribute("eventCateList", eventCateList);
		model.addAttribute("pageInfo", pageInfo);
		
		
		
		return "cinepick/event_store/event_list";
	}
	
//	// 시사회 이벤트 상세 목록
//	@GetMapping("previewEventList")
//	public String previewEventList(Model model) {
//		System.out.println("EventController - previewEventList()");
//		model.addAttribute("category", "preview");
//		return "cinepick/event_store/event_list";
//	}
//	
//	// 극장별 이벤트 상세 목록
//	@GetMapping("theaterEventList")
//	public String theaterEventList(Model model) {
//		System.out.println("EventController - theaterEventList()");
//		model.addAttribute("category", "theater");
//		return "cinepick/event_store/event_list";
//	}
}
