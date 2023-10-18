package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.UserVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;

@Controller
public class AdminController {
	
	// 서비스 오토와이어
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	/*====================================================================
	 * - 목차 -
	 * 1. 관리자 메인
	 * 2. 내 정보 관리
	 * 3. 회원 정보 관리
	 * 4. 영화
	 * 5. 상영 시간표
	 * 6. 공지사항
	 * 7. 자주 묻는 질문
	 * 8. 자주 묻는 질문 카테고리
	 * 9. 1:1 문의
	 * 10. 이벤트
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 1. 관리자 메인
	 * ===================================================================
	 * */
	
	// 관리자 메인 페이지
	@GetMapping("admin")
	public String admin() {
		System.out.println("AdminController - admin()");
		return "mypage/admin/admin_mypage";
	}
	
	/*====================================================================
	 * 2. 내 정보 관리
	 * ===================================================================
	 * */
	
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
	
	/*====================================================================
	 * 3. 회원 정보 관리
	 * ===================================================================
	 * */
	
	// 관리자 회원정보 관리 페이지
	@GetMapping("adminUserList")
	public String adminUserList(Model model) {
		List<UserVO> userList = userService.getUserList();
		System.out.println("AdminController - adminUserList()");
		// Model 객체에 List 객체 저장
		model.addAttribute("userList", userList);
		System.out.println(userList);
		return "mypage/admin/board_user";
	}
	
	/*====================================================================
	 * 4. 영화
	 * ===================================================================
	 * */
	
	// 관리자 영화 정보 목록
	@GetMapping("adminMovieList")
	public String adminMovieList() {
		System.out.println("AdminController - adminMovieList()");
		return "mypage/admin/board_movie";
	}
	
	// 관리자 영화 정보 등록 폼
	@GetMapping("adminMovieInsert")
	public String adminMovieInsert() {
		System.out.println("AdminController - adminMovieInsert()");
		return "mypage/admin/update_movie";
	}
	
	/*====================================================================
	 * 5. 상영 시간표
	 * ===================================================================
	 * */
	
	// 관리자 상영 시간표 관리 페이지
	@GetMapping("adminScheduleList")
	public String adminScheduleList() {
		System.out.println("AdminController - adminScheduleList()");
		return "mypage/admin/board_schedule";
	}
	
	// 관리자 상영 시간표 등록 폼
	@GetMapping("adminScheduleInsert")
	public String adminScheduleInsert() {
		System.out.println("AdminController - adminScheduleInsert()");
		return "mypage/admin/update_schedule";
	}
	
	/*====================================================================
	 * 6. 공지사항
	 * ===================================================================
	 * */
	
	// 관리자 공지사항 조회 페이지
	@GetMapping("adminNoticeList")
	public String adminNoticeList(Model model) {
		System.out.println("AdminController - adminNoticeList()");
		List<NoticeVO> noticeList = adminService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		
		return "mypage/admin/board_notion";
	}
	
	// 관리자 공지사항 등록 폼
	@GetMapping("adminNoticeInsert")
	public String adminNoticeInsert() {
		System.out.println("AdminController - adminNoticeInsert()");
		return "mypage/admin/insert_notion";
	}
	
	// 관리자 공지사항 등록
	@PostMapping("adminNoticeInsertPro")
	public String adminNoticeInsertPro(NoticeVO notice) {
		System.out.println("AdminController - adminNoticeInsertPro()");
		int insertCount = adminService.insertNotice(notice);
		
		return "redirect:/adminNoticeList";
	}
	
	// 관리자 공지사항 삭제
	@GetMapping("adminNoticeDelete")
	public String adminNoticeDelete(int noticeIdx) {
		System.out.println("AdminController - adminNoticeDelete()");
		int resultCount = adminService.deleteNotice(noticeIdx);
		
		return "redirect:/adminNoticeList";
	}
	
	// 관리자 공지사항 수정 폼
	@GetMapping("adminNoticeUpdate")
	public String adminNoticeUpdate(int noticeIdx, Model model) {
		System.out.println("AdminController - adminNoticeUpdate()");
		NoticeVO notice = adminService.getNotice(noticeIdx);
		model.addAttribute("notice", notice);
		
		return "mypage/admin/update_notion";
	}
	
	// 관리자 공시사항 수정
	@PostMapping("adminNoticeUpdatePro")
	public String adminNoticeUpdatePro(NoticeVO notice) {
		System.out.println("AdminController - adminNoticeUpdatePro()");
		int insertCount = adminService.updateNotice(notice);
		
		return "redirect:/adminNoticeList";
	}

	/*====================================================================
	 * 7. 자주 묻는 질문
	 * ===================================================================
	 * */
	
	// 관리자 자주 묻는 질문 조회 페이지
	@GetMapping("adminQNAList")
	public String adminQNAList(Model model) {
		System.out.println("AdminController - adminQNAList()");
		List<QnaVO> qnaList = adminService.getQnaList();
		model.addAttribute("qnaList", qnaList);
		
		return "mypage/admin/board_question";
	}
	
	// 관리자 자주 묻는 질문 등록 폼
	@GetMapping("adminQNAInsert")
	public String adminQNAInsert(Model model) {
		System.out.println("AdminController - adminQNAInsert()");
		List<QnaCateVO> categoryList = adminService.getCategory();
		
		model.addAttribute("categoryList", categoryList);
		return "mypage/admin/update_question";
	}
	
	// 관리자 자주묻는 질문 등록
	@PostMapping("adminQNAInsertPro")
	public String adminQNAInsertPro(QnaVO qna) {
		System.out.println("AdminController - adminQNAInsertPro()");
		int resultCount = adminService.insertQna(qna);
		
		return "redirect:/adminQNAList";
	}
	
	/*====================================================================
	 * 8. 자주 묻는 질문 카테고리
	 * ===================================================================
	 * */
	
	// 관리자 질문카테고리 관리 페이지 및 폼
	@GetMapping("adminCategoryUpdate")
	public String adminCategoryUpdate(Model model) {
		System.out.println("AdminController - adminCategoryUpdate()");
		List<QnaCateVO> categoryList = adminService.getCategory();
		
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
	
	/*====================================================================
	 * 9. 1:1 문의
	 * ===================================================================
	 * */
	
	// 관리자 1:1문의 조회 페이지
	@GetMapping("adminOneToOneList")
	public String adminOneToOneList() {
		System.out.println("AdminController - adminOneToOneList()");
		return "mypage/admin/board_personal_inquiry";
	}
	
	// 관리자 1:1문의 답변 등록 폼
	@GetMapping("adminOneToOneInsert")
	public String adminOneToOneInsert() {
		System.out.println("AdminController - adminOneToOneInsert()");
		return "mypage/admin/update_personal_inquiry";
	}
	
	/*====================================================================
	 * 10. 이벤트
	 * ===================================================================
	 * */
	
	// 관리자 이벤트 조회 페이지
	@GetMapping("adminEventList")
	public String adminEventList() {
		System.out.println("AdminController - adminEventList()");
		return "mypage/admin/board_event";
	}
	
	// 관리자 이벤트 등록 폼
	@GetMapping("adminEventInsert")
	public String adminEventInsert() {
		System.out.println("AdminController - adminEventInsert()");
		return "mypage/admin/update_event";
	}
}
