package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	// 이벤트 카테고리별 간단한 목록
	@GetMapping("eventCategory")
	public String eventCategory() {
		System.out.println("EventController - eventCategory()");
		return "cinepick/event_store/event_category_list";
	}
	
	// 이벤트 상세보기
	@GetMapping("eventDetail")
	public String eventDetail() {
		System.out.println("EventController - eventDetail()");
		return "cinepick/event_store/event_detail";
	}
	
	// 영화 이벤트 상세 목록
	@GetMapping("movieEventList")
	public String movieEventList(Model model) {
		System.out.println("EventController - movieEventList()");
		model.addAttribute("category", "movie");
		return "cinepick/event_store/event_list";
	}
	
	// 시사회 이벤트 상세 목록
	@GetMapping("previewEventList")
	public String previewEventList(Model model) {
		System.out.println("EventController - previewEventList()");
		model.addAttribute("category", "preview");
		return "cinepick/event_store/event_list";
	}
	
	// 극장별 이벤트 상세 목록
	@GetMapping("theaterEventList")
	public String theaterEventList(Model model) {
		System.out.println("EventController - theaterEventList()");
		model.addAttribute("category", "theater");
		return "cinepick/event_store/event_list";
	}
}
