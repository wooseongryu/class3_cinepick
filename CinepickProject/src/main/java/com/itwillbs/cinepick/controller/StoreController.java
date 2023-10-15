package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreController {
	// 스토어 목록 보기
	@GetMapping("store")
	public String store() {
		System.out.println("StoreController - store()");
		return "cinepick/event_store/store_list";
	}
	
	// 스토어 상세보기
	@GetMapping("storeDetail")
	public String storeDetail() {
		System.out.println("StoreController - storeDetail()");
		return "cinepick/event_store/store_detail"; 
	}
}
