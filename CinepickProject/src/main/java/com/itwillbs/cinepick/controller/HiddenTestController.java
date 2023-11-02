package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	
}
