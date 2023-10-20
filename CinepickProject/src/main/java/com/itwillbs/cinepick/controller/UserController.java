package com.itwillbs.cinepick.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	
	// 유저 마이페이지 메인
	@GetMapping("user")
	public String user() {
		System.out.println("UserController - uesr");
		return "mypage/user/user_mypage";
	}
	
	// "/userLogout" 요청에 대한 로그아웃 비즈니스 로직
	@GetMapping("userLogout")
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 성공 - 메인페이지로 이동합니다");
		
		// 메인페이지로 리다이렉트
		return "redirect:/";
	}
	
	// 유저 정보 변경
	@GetMapping("userUpdate")
	public String userUpdate(UserVO user, HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		
		// 세션 아이디가 없을 경우 "fail_back" 페이지를 통해 "잘못된 접근입니다!" 출력
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "cinepick/login_join/fail_back";
		}
		
		// 만약, 현재 세션이 관리자가 아니거나 또는 관리자이면서 id 파라미터가 없을 경우
		// id 변수값을 세션 아이디로 교체
		if(!sId.equals("admin") || (sId.equals("admin") && user.getUser_id() == null || user.getUser_id().equals(""))) {
			user.setUser_id(sId);
		}
		
		// UserService - getUser() 메서드를 호출하여 회원 상세정보 조회 요청
		// => 파라미터 : UserVO 객체   리턴타입 : UserVO(dbUser)
		UserVO dbUser = service.getUser(user);
		
		// 회원 상세정보를 Model 객체에 저장
		model.addAttribute("user", dbUser);
//		System.out.println(user);
		
		return "mypage/user/user_update";
	}
	
	// 유저 정보 변경 처리
	@PostMapping("userUpdatePro")
	public String UpdatePro(UserVO user, Model model) {
	
		// 1. BcryptPasswordEncoder 클래스 인스턴스 생성
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		// 2. BcryptPasswordEncoder 객체의 encode() 메서드를 호출하여 
		//    원문(평문) 패스워드에 대한 해싱(= 암호화) 수행 후 결과값 저장
		String securePasswd = passwordEncoder.encode(user.getUser_passwd());
		
		// 3. 암호화 된 패스워드를 MemberVO 객체에 저장
		user.setUser_passwd(securePasswd);
		
		// ---------------------------------------------------------------------
		// UserService - updateUser() 메서드 호출하여 회원가입 작업 요청
		
		int updateCount = service.updateUser(user);
		
		if(updateCount > 0) { // 성공
			model.addAttribute("msg", "회원정보변경 성공!");
			return "cinepick/login_join/success";
		} else { // 실패
			model.addAttribute("msg", "회원정보변경 실패!");
			return "cinepick/login_join/fail_back";
		}
		
		
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
