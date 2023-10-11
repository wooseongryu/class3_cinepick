package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	@GetMapping("event")
	public String event() {
		System.out.println("EventController - event()");
		return "cinepick/event_store/event_list";
	}
	
	@GetMapping("eventDetail")
	public String eventDetail() {
		System.out.println("EventController - eventDetail()");
		return "cinepick/event_store/event_detail";
	}
}
