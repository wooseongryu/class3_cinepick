package com.itwillbs.cinepick.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.TicketService;

@Controller
public class TicketController {
	
	@Autowired
	private TicketService service;
	
	
	// 좌석 -> 예매내역 출력
	@GetMapping("payment-successcomplete")
	public String reserveFinish() {
		
		
		System.out.println("SeatTestController - reserveFinish()ㄴㄴ");
		return "cinepick/booking/step5";
	}

	// 좌석 -> 예매내역 출력
	@PostMapping("reserve")
	public String reserveFinish2(@RequestParam String allTickets, @RequestParam String seats, 
			Model model) {
		
		System.out.println("reserve 매핑 - post");
		
		System.out.println(allTickets);
		System.out.println(seats);
		
//		model.addAttribute("allTickets", allTickets);
//		model.addAttribute("seats", seats);
		
		int insertCount = service.registTicket(allTickets, seats);
		
		if(insertCount > 0) {
			System.out.println("티켓 들어감");
		}
		
		return "cinepick/booking/step3";
	}
	
	// 좌석 -> 예매내역 출력
	@GetMapping("reserve")
	public String reserveFinish3(@RequestParam String allTickets, @RequestParam String seats, 
			Model model) {
		
		System.out.println("reserve 매핑 - get");
		
		System.out.println(allTickets);
		System.out.println(seats);
		
//		model.addAttribute("allTickets", allTickets);
//		model.addAttribute("seats", seats);
		
		int insertCount = service.registTicket(allTickets, seats);
		
		if(insertCount > 0) {
			System.out.println("티켓 들어감");
		}
		
		return "cinepick/booking/step3";
	}
	
//	// 좌석 -> 예매내역 출력
//	@GetMapping("bookingStepTest")
//	public String bookingStepTest(@RequestParam String seats, @RequestParam String allTickets) {
//		
//		System.out.println("step6 매핑");
//		
//		System.out.println(seats);
//		System.out.println(allTickets);
//		return "step6_test";
//	}
	
	@GetMapping("paySuccess")
	public String paySuccess() {
		
		
		
		return "cinepick/booking/step5";
	}
	
	@GetMapping("stepPay")
	public String stepPay() {
		return "cinepick/booking/stepPay_test2";
	}
	
	@GetMapping("headTest")
	public String headTest() {
		return "cinepick/booking/headerTest";
	}
	
	@GetMapping("payTest")
	public String payTest() {
		return "cinepick/booking/payTest";
	}
	
	@PostMapping("bookPay")
	public String bookPay(@RequestParam String allTickets, @RequestParam String seats, 
			@RequestParam int total, 
			Model model) {
		
		System.out.println("bookPay 매핑 - post");
		
		System.out.println(allTickets);
		System.out.println(seats);
		System.out.println(total);
		
//		model.addAttribute("allTickets", allTickets);
//		model.addAttribute("seats", seats);
		
		int insertCount = service.registTicket(allTickets, seats, total);
//		
		if(insertCount > 0) {
			System.out.println("bookPay1101 티켓 들어감");
		}
		
		return "cinepick/booking/stepPay_test2";
	};
	
	
}
