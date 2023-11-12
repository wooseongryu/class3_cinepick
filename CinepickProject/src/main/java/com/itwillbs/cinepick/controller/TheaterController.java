package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.EventService;
import com.itwillbs.cinepick.service.TheaterService;
import com.itwillbs.cinepick.vo.CityVO;
import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.TimeScheduleVO;

@Controller
public class TheaterController {
	
	@Autowired
	private TheaterService service;
	
	@Autowired
	private EventService eventService;
	
	
	// 극장 목록 보기
	@GetMapping("theater")
	public String theater(TheaterVO theater, Model model, CityVO city) {
		System.out.println("TheaterController - theater");
		
		List<TheaterVO> theaterList = service.getBranch(theater);
//		System.out.println(theaterList);
		
		List<CityVO> cityList = service.getCity(city); 
		
		model.addAttribute("theaterList", theaterList);
		model.addAttribute("cityList", cityList);
		
		
		
		// 상영 시간표 추가
		
		int brchNo = 4002; // 순천
		
		List<TimeScheduleVO> movieGroup = service.getMovie(brchNo);
		model.addAttribute("movieGroup", movieGroup);
		
		List<TimeScheduleVO> timeSchedule = service.getSchedule(brchNo);
		model.addAttribute("timeSchedule", timeSchedule);
		
		
		// 이벤트 추가
		
		List<EventVO> eventList = eventService.getEventList();
//		List<EventVO> eventList = eventService.selectEventList();
		System.out.println(eventList);
		
		model.addAttribute("eventList", eventList);
		
		return "cinepick/theater/theater_main";
	}
	
	// 극장 상세보기
	@GetMapping("theaterDetail")
	public String theaterDetail(TheaterVO theater, Model model, @RequestParam int brchNo) {
		System.out.println("TheaterController - theaterDetail");
		
		TheaterVO dbTheater = service.getTheater(theater);
		model.addAttribute("theater", dbTheater);
		
		System.out.println("지역번호는 : " + brchNo);
		
		// 상영 스케줄
		
		List<TimeScheduleVO> movieGroup = service.getMovie(brchNo);
		model.addAttribute("movieGroup", movieGroup);
		
		List<TimeScheduleVO> timeSchedule = service.getSchedule(brchNo);
		model.addAttribute("timeSchedule", timeSchedule);
		
		
		System.out.println(timeSchedule);
		
		return "cinepick/theater/theater_info";
	}
	
	// 극장 상세보기 상영 스케줄
//	@GetMapping("theaterDetail/time")
//	public String theaterTimeSchedule(TheaterVO theater, Model model, @RequestParam int brchNo) {
//		System.out.println("TheaterController - theaterDetail");
//		
//		TheaterVO dbTheater = service.getTheater(theater);
//		model.addAttribute("theater", dbTheater);
//		
//		System.out.println("지역번호는 : " + brchNo);
//		
//		
//		// 상영 스케줄
//		
//		List<TimeScheduleVO> timeSchedules = service.getSchedule(brchNo);
//		
//		return "cinepick/theater/theater_info";
//	}
}
