package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.service.MemberService;
import com.itwillbs.cinepick.vo.MemberVO;
import com.itwillbs.cinepick.vo.NoticeVO;

@Controller
public class AdminController {
	
	// 서비스 오토와이어
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;
	
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
	
	// 관리자 영화 정보 관리 페이지
	@GetMapping("adminMemberList")
	public String adminMemberList(Model model) {
		List<MemberVO> memberList = memberService.getMemberList();
		System.out.println("AdminController - adminMemberList()");
		// Model 객체에 List 객체 저장
		model.addAttribute("memberList", memberList);
		return "mypage/admin/board_member";
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
	public String adminNoticeList(Model model) {
		System.out.println("AdminController - adminNoticeList()");
		List<NoticeVO> noticeList = adminService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		
		return "mypage/admin/board_notion";
	}
	
	// 관리자 공지사항 등록 폼
	@GetMapping("adminNoticeUpdate")
	public String adminNoticeUpdate() {
		System.out.println("AdminController - adminNoticeUpdate()");
		return "mypage/admin/update_notion";
	}
	
	// 관리자 공지사항 등록
	@PostMapping("adminNoticeUpdatePro")
	public String adminNoticeUpdatePro(NoticeVO notice) {
		System.out.println("AdminController - adminNoticeUpdatePro()");
		int insertCount = adminService.updateNotice(notice);
		
		return "redirect:/adminNoticeList";
	}
	
	// 관리자 자주 묻는 질문 조회 페이지
	@GetMapping("adminQNAList")
	public String adminQNAList() {
		System.out.println("AdminController - adminQNAList()");
		return "mypage/admin/board_question";
	}
	
	// 관리자 질문카테고리 관리 페이지 및 폼
	@GetMapping("adminCategoryUpdate")
	public String adminCategoryUpdate(Model model) {
		System.out.println("AdminController - adminCategoryUpdate()");
		List<String> categoryList = adminService.getCategory();
		System.out.println(categoryList);
		
		model.addAttribute("categoryList", categoryList);
		
		return "mypage/admin/update_category";
	}
	
	// 관리자 질문카테고리 등록
	@PostMapping("adminCategoryUpdatePro")
	public String adminCategoryUpdatePro(String qnaCateSubject) {
		System.out.println("adminCategoryUpdatePro - adminCategoryUpdatePro()");
		int insertCount = adminService.insertCategory(qnaCateSubject);
		
		return "redirect:/adminQNAList";
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
