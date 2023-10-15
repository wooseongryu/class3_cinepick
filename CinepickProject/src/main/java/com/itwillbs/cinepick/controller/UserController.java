package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	// 유저 마이페이지 메인
	@GetMapping("user")
	public String user() {
		System.out.println("UserController - uesr");
		return "mypage/user/user_mypage";
	}
	
	// 내 정보 변경
	@GetMapping("userUpdate")
	public String userUpdate() {
		System.out.println("UserController - userUpdate");
		return "mypage/user/user_update";
	}
	
	// 회원탈퇴
	@GetMapping("userOut")
	public String userOut() {
		System.out.println("UserController - userOut");
		return "mypage/user/user_out";
	}
	
	// 예매 내역 목록
	@GetMapping("userMoviePurchaseList")
	public String userMoviePurchaseList() {
		System.out.println("UserController - userMoviePurchaseList");
		return "mypage/user/user_movie_purchase_list";
	}
	
	// 스토어 결제 내역 목록
	@GetMapping("userStorePurchaseList")
	public String userStorePurchaseList() {
		System.out.println("UserController - userStorePurchaseList");
		return "mypage/user/user_store_purchase_list";
	}
	
	// 내가 쓴 리뷰 목록
	@GetMapping("userMyReviewList")
	public String userMyReviewList() {
		System.out.println("UserController - userMyReviewList");
		return "mypage/user/user_myReview";
	}
	
	// 1:1문의 목록
	@GetMapping("userMyQuestionList")
	public String userMyQuestionList() {
		System.out.println("UserController - userMyQuestionList");
		return "mypage/user/user_mqList";
	}
	
	// 예매 취소 내역 목록
	@GetMapping("userMovieCancelList")
	public String userMovieCancelList() {
		System.out.println("UserController - userMovieCancelList");
		return "mypage/user/user_movie_cancel_list";
	}
	
	// 스토어 취소 내역 목록
	@GetMapping("userStoreCancelList")
	public String userStoreCancelList() {
		System.out.println("UserController - userStoreCancelList");
		return "mypage/user/user_store_cancel_list";
	}
}
