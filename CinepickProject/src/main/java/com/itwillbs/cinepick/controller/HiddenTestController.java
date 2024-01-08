package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HiddenTestController {
	
//	@Autowired
//	private TicketService service;
	
	@GetMapping("hiddenTest1")
	public String hiddenTest1() {
		return "cinepick/hiddenTest/hiddenTest1";
	}
	
	
	@PostMapping("hiddenTest2")
	public String hiddenTest2(String number, String string, Model model) {
		
		model.addAttribute("number", number);
		model.addAttribute("string", string);
		
		
		return "cinepick/hiddenTest/hiddenTest2";
	}
	
	
	@PostMapping("hiddenTest3")
	public String hiddenTest3() {
		return "cinepick/hiddenTest/hiddenTest3";
	}
	
	// 아래는 결제 취소 연습
	
	@GetMapping("payCancle")
	public String paySuccess() {
		
		return "cinepick/booking/payCancle";
	}
	
	@ResponseBody
	@PostMapping("bookingCancle")
	public String booikingCancle() {
		System.out.println("결제취소!");
		
		
		return "";
	}
	
	// 아래는 텀블벅 크롤링
	
	@GetMapping("tumble")
	public String tumble() {
		
		return "cinepick/hiddenTest/tumble";
	}
	
	@GetMapping("tumbleMain")
	public String tumbleMain() {
		
		return "cinepick/hiddenTest/tumbleMain";
	}
	
	@GetMapping("tumbleInfo")
	public String tumbleInfo() {
		
		return "cinepick/hiddenTest/tumbleInfo";
	}
	
	@GetMapping("tumbleFormat")
	public String tumbleFormat() {
		
		return "cinepick/hiddenTest/tumbleFormat";
	}
	@GetMapping("tumbleInfo2")
	public String tumbleInfo2() {
		return "cinepick/hiddenTest/tumbleInfo2";
	}
	@GetMapping("wadiz")
	public String wadiz() {
		
		System.out.println("와디즈");
		return "cinepick/hiddenTest/wadiz";
	}
	
	@GetMapping("wadizMain")
	public String wadizMain() {
		return "cinepick/hiddenTest/wadizMain";
	}
	@GetMapping("web/main")
	public String wadizs() {
		return "cinepick/hiddenTest/wadiz";
	}
	@GetMapping("wadizOpen")
	public String wadizOpen() {
		return "cinepick/hiddenTest/wadizOpen";
	}
	
}
