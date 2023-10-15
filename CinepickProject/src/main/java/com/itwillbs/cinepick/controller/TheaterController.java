package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TheaterController {
	// 극장 목록 보기
	@GetMapping("theater")
	public String theater() {
		System.out.println("TheaterController - theater");
		return "cinepick/theater/theater_main";
	}
	
	// 극장 상세보기
	@GetMapping("theaterDetail")
	public String theaterDetail() {
		System.out.println("TheaterController - theaterDetail");
		return "cinepick/theater/theater_info";
	}
}
