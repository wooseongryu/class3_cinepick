package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginJoinController {
	// 로그인 
	@GetMapping("login")
	public String login() {
		System.out.println("LoginJoinController - login");
		return "cinepick/login_join/login";
	}
	
	// 회원가입
	@GetMapping("join")
	public String join() {
		System.out.println("LoginJoinController - join");
		return "cinepick/login_join/join";
	}
	
}
