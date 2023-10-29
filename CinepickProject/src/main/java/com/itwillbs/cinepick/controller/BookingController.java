package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.ScreenVO;
import com.itwillbs.cinepick.vo.TheaterVO;

@Controller
public class BookingController {
	
	@Autowired
	private AdminService adminService;
	
	/*====================================================================
	 * - 목차 -
	 * 1. 영화, 극장, 시간 선택
	 * 2. 좌석 선택
	 * 3. 결제
	 * 4. 예매 완료
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 1. 영화, 극장, 시간 선택
	 * ===================================================================
	 * */
	
	// 영화, 극장, 시간 선택 페이지
	@GetMapping("bookingStepOne")
	public String bookingStepOne() {
		System.out.println("BookingController - bookingStepOne()");
		
//		List<MovieVO> movieList = adminService.selectMovie();
//		List<TheaterVO> theater = adminService.selectTheater(-1);
//		List<ScreenVO> screen = adminService.selectScreen(1);
		
		return "cinepick/booking/step1";
	}
	
	@ResponseBody
	@PostMapping("getMovieList")
	public String getMovieList(Gson gson) {
		System.out.println("BookingController - getMovieList()");
		
		List<MovieVO> movieList = adminService.selectMovie();
		
		
		return gson.toJson(movieList);
	}
	
	/*====================================================================
	 * 2. 좌석 선택
	 * ===================================================================
	 * */
	
	// 좌석 선택 페이지
	@GetMapping("bookingStepTwo")
	public String bookingStepTwo() {
		System.out.println("BookingController - bookingStepTwo()");
		return "cinepick/booking/step2";
	}
	
	/*====================================================================
	 * 3. 결제
	 * ===================================================================
	 * */
	
	// 결제 페이지
	@GetMapping("bookingStepThree")
	public String bookingStepThree() {
		System.out.println("BookingController - bookingStepThree()");
		return "cinepick/booking/step3";
	}
	
	/*====================================================================
	 * 4. 예매 완료
	 * ===================================================================
	 * */
	
	// 예매 완료 페이지
	@GetMapping("bookingStepFour")
	public String bookingStepFour() {
		System.out.println("BookingController - bookingStepFour()");
		return "cinepick/booking/step4";
	}
}
