package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {
	// 영화, 극장, 시간 선택 페이지
	@GetMapping("bookingStepOne")
	public String bookingStepOne() {
		System.out.println("BookingController - bookingStepOne()");
		return "cinepick/booking/step1";
	}
	
	// 좌석 선택 페이지
	@GetMapping("bookingStepTwo")
	public String bookingStepTwo() {
		System.out.println("BookingController - bookingStepTwo()");
		return "cinepick/booking/step2";
	}
	
	// 결제 페이지
	@GetMapping("bookingStepThree")
	public String bookingStepThree() {
		System.out.println("BookingController - bookingStepThree()");
		return "cinepick/booking/step3";
	}
	
	// 예매 완료 페이지
	@GetMapping("bookingStepFour")
	public String bookingStepFour() {
		System.out.println("BookingController - bookingStepFour()");
		return "cinepick/booking/step4";
	}
}
