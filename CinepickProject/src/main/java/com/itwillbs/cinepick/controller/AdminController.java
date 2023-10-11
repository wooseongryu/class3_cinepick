package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("admin")
	public String admin() {
		System.out.println("AdminController - admin()");
		return "mypage/admin/admin_mypage";
	}
	
	@GetMapping("adminUpdate")
	public String adminUpdate() {
		System.out.println("AdminController - adminUpdate()");
		return "mypage/admin/board_admin_update";
	}
	
	@GetMapping("adminOut")
	public String adminOut() {
		System.out.println("AdminController - adminOut()");
		return "mypage/admin/board_admin_out";
	}
	
	@GetMapping("adminMemberList")
	public String adminMemberList() {
		System.out.println("AdminController - adminMemberList()");
		return "mypage/admin/board_member";
	}
	
	@GetMapping("adminMovieList")
	public String adminMovieList() {
		System.out.println("AdminController - adminMovieList()");
		return "mypage/admin/board_movie";
	}
	
	@GetMapping("adminMovieUpdate")
	public String adminMovieUpdate() {
		System.out.println("AdminController - adminMovieUpdate()");
		return "mypage/admin/update_movie";
	}
	
	@GetMapping("adminScheduleList")
	public String adminScheduleList() {
		System.out.println("AdminController - adminScheduleList()");
		return "mypage/admin/board_schedule";
	}
	
	@GetMapping("adminScheduleUpdate")
	public String adminScheduleUpdate() {
		System.out.println("AdminController - adminScheduleUpdate()");
		return "mypage/admin/update_schedule";
	}
	
	@GetMapping("adminNoticeList")
	public String adminNoticeList() {
		System.out.println("AdminController - adminNoticeList()");
		return "mypage/admin/board_notion";
	}
	
	@GetMapping("adminNoticeUpdate")
	public String adminNoticeUpdate() {
		System.out.println("AdminController - adminNoticeUpdate()");
		return "mypage/admin/update_notion";
	}
	
	@GetMapping("adminQNAList")
	public String adminQNAList() {
		System.out.println("AdminController - adminQNAList()");
		return "mypage/admin/board_question";
	}
	
	@GetMapping("adminQNAUpdate")
	public String adminQNAUpdate() {
		System.out.println("AdminController - adminQNAUpdate()");
		return "mypage/admin/update_question";
	}
	
	@GetMapping("adminOneToOneList")
	public String adminOneToOneList() {
		System.out.println("AdminController - adminOneToOneList()");
		return "mypage/admin/board_personal_inquiry";
	}
	
	@GetMapping("adminOneToOneUpdate")
	public String adminOneToOneUpdate() {
		System.out.println("AdminController - adminOneToOneUpdate()");
		return "mypage/admin/update_personal_inquiry";
	}
	
	@GetMapping("adminEventList")
	public String adminEventList() {
		System.out.println("AdminController - adminEventList()");
		return "mypage/admin/board_event";
	}
	
	@GetMapping("adminEventUpdate")
	public String adminEventUpdate() {
		System.out.println("AdminController - adminEventUpdate()");
		return "mypage/admin/update_event";
	}
}
