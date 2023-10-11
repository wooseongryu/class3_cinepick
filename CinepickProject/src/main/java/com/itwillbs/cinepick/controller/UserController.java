package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("user")
	public String user() {
		System.out.println("UserController - uesr");
		return "mypage/user/user_mypage";
	}
	
	@GetMapping("userUpdate")
	public String userUpdate() {
		System.out.println("UserController - userUpdate");
		return "mypage/user/user_update";
	}
	
	@GetMapping("userOut")
	public String userOut() {
		System.out.println("UserController - userOut");
		return "mypage/user/user_out";
	}
	
	@GetMapping("userMoviePurchaseList")
	public String userMoviePurchaseList() {
		System.out.println("UserController - userMoviePurchaseList");
		return "mypage/user/user_movie_purchase_list";
	}
	
	@GetMapping("userStorePurchaseList")
	public String userStorePurchaseList() {
		System.out.println("UserController - userStorePurchaseList");
		return "mypage/user/user_store_purchase_list";
	}
	
	@GetMapping("userMyReviewList")
	public String userMyReviewList() {
		System.out.println("UserController - userMyReviewList");
		return "mypage/user/user_myReview";
	}
	
	@GetMapping("userMyQuestionList")
	public String userMyQuestionList() {
		System.out.println("UserController - userMyQuestionList");
		return "mypage/user/user_mqList";
	}
	
	@GetMapping("userMovieCancelList")
	public String userMovieCancelList() {
		System.out.println("UserController - userMovieCancelList");
		return "mypage/user/user_movie_cancel_list";
	}
	
	@GetMapping("userStoreCancelList")
	public String userStoreCancelList() {
		System.out.println("UserController - userStoreCancelList");
		return "mypage/user/user_store_cancel_list";
	}
}
