package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	// 관리자 메인 페이지
	@GetMapping("admin")
	public String admin() {
		System.out.println("AdminController - admin()");
		return "mypage/admin/admin_mypage";
	}
	
	// 관리자 내 정보 변경 페이지
	@GetMapping("adminUpdate")
	public String adminUpdate() {
		System.out.println("AdminController - adminUpdate()");
		return "mypage/admin/board_admin_update";
	}
	
	// 관리자 회원 탈퇴 페이지
	@GetMapping("adminOut")
	public String adminOut() {
		System.out.println("AdminController - adminOut()");
		return "mypage/admin/board_admin_out";
	}
	
	// 관리자 회원 목록 조회 페이지
	@GetMapping("adminMemberList")
	public String adminMemberList() {
		System.out.println("AdminController - adminMemberList()");
		return "mypage/admin/board_member";
	}
	
	// 관리자 영화 정보 관리 페이지
	@GetMapping("adminMovieList")
	public String adminMovieList() {
		System.out.println("AdminController - adminMovieList()");
		return "mypage/admin/board_movie";
	}
	
	// 관리자 영화 정보 등록 폼
	@GetMapping("adminMovieUpdate")
	public String adminMovieUpdate() {
		System.out.println("AdminController - adminMovieUpdate()");
		return "mypage/admin/update_movie";
	}
	
	// 관리자 상영 시간표 관리 페이지
	@GetMapping("adminScheduleList")
	public String adminScheduleList() {
		System.out.println("AdminController - adminScheduleList()");
		return "mypage/admin/board_schedule";
	}
	
	// 관리자 상영 시간표 등록 폼
	@GetMapping("adminScheduleUpdate")
	public String adminScheduleUpdate() {
		System.out.println("AdminController - adminScheduleUpdate()");
		return "mypage/admin/update_schedule";
	}
	
	// 관리자 공지사항 조회 페이지
	@GetMapping("adminNoticeList")
	public String adminNoticeList() {
		System.out.println("AdminController - adminNoticeList()");
		return "mypage/admin/board_notion";
	}
	
	// 관리자 공지사항 등록 폼
	@GetMapping("adminNoticeUpdate")
	public String adminNoticeUpdate() {
		System.out.println("AdminController - adminNoticeUpdate()");
		return "mypage/admin/update_notion";
	}
	
	// 관리자 자주 묻는 질문 조회 페이지
	@GetMapping("adminQNAList")
	public String adminQNAList() {
		System.out.println("AdminController - adminQNAList()");
		return "mypage/admin/board_question";
	}
	
	// 관리자 자주 묻는 질문 등록 폼
	@GetMapping("adminQNAUpdate")
	public String adminQNAUpdate() {
		System.out.println("AdminController - adminQNAUpdate()");
		return "mypage/admin/update_question";
	}
	
	// 관리자 1:1문의 조회 페이지
	@GetMapping("adminOneToOneList")
	public String adminOneToOneList() {
		System.out.println("AdminController - adminOneToOneList()");
		return "mypage/admin/board_personal_inquiry";
	}
	
	// 관리자 1:1문의 답변 등록 폼
	@GetMapping("adminOneToOneUpdate")
	public String adminOneToOneUpdate() {
		System.out.println("AdminController - adminOneToOneUpdate()");
		return "mypage/admin/update_personal_inquiry";
	}
	
	// 관리자 이벤트 조회 페이지
	@GetMapping("adminEventList")
	public String adminEventList() {
		System.out.println("AdminController - adminEventList()");
		return "mypage/admin/board_event";
	}
	
	// 관리자 이벤트 등록 폼
	@GetMapping("adminEventUpdate")
	public String adminEventUpdate() {
		System.out.println("AdminController - adminEventUpdate()");
		return "mypage/admin/update_event";
	}
}
