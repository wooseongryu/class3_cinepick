package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TheaterController {
	@GetMapping("theater")
	public String theater() {
		System.out.println("TheaterController - theater");
		return "cinepick/theater/theater_main";
	}
	
	@GetMapping("theaterDetail")
	public String theaterDetail() {
		System.out.println("TheaterController - theaterDetail");
		return "cinepick/theater/theater_info";
	}
}
