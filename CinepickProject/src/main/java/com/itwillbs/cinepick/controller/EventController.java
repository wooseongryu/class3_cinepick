package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	// 이벤트 목록
	@GetMapping("event")
	public String event() {
		System.out.println("EventController - event()");
		return "cinepick/event_store/event_list";
	}
	
	// 이벤트 상세보기
	@GetMapping("eventDetail")
	public String eventDetail() {
		System.out.println("EventController - eventDetail()");
		return "cinepick/event_store/event_detail";
	}
}
