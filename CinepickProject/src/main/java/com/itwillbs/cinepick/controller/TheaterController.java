package com.itwillbs.cinepick.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.cinepick.service.TheaterService;
import com.itwillbs.cinepick.vo.CityVO;
import com.itwillbs.cinepick.vo.TheaterVO;

@Controller
public class TheaterController {
	
	@Autowired
	private TheaterService service;
	
	
	// 극장 목록 보기
	@GetMapping("theater")
	public String theater() {
		System.out.println("TheaterController - theater");
		
		return "cinepick/theater/theater_main";
	}
	
	// 극장 상세보기
	@GetMapping("theaterDetail")
	public String theaterDetail(TheaterVO theater, Model model) {
		System.out.println("TheaterController - theaterDetail");
		
		TheaterVO dbTheater = service.getTheater(theater);
		model.addAttribute("theater", dbTheater);
		
		return "cinepick/theater/theater_info";
	}
}
