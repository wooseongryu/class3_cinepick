package com.itwillbs.cinepick.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.UserVO;

@Controller
public class LoginJoinController {
	
	// 서비스 오토와이어 --- 서비스를 사용해야하면 필수!!
	@Autowired
	private UserService service;
	
	// 로그인 폼으로 이동
	@GetMapping("login")
	public String login() {
		System.out.println("LoginJoinController - login");
		return "cinepick/login_join/login";
	}
	
	// 로그인 처리
	@PostMapping("loginPro")
	public String loginPro(UserVO user, HttpSession session) {
		System.out.println("LoginJoinController - loginPro");
		
		UserVO userVO = service.checkUser(user);
		
		// db 에서 가져온거
		System.out.println(userVO);
		
		if(userVO == null) {
			return "cinepick/login_join/fail_back";
		}
		
		session.setAttribute("mbEmail", user.getUEmail());
		session.setAttribute("mbPasswd1", user.getUPasswd1());
		return "redirect:/";
	}
	
	
	// 회원가입
	@GetMapping("join")
	public String join() {
		System.out.println("LoginJoinController - join");
		return "cinepick/login_join/join";
	}
	
	// 폼 파라미터 데이터를 관리할 MemberVO 클래스 타입 파라미터 변수를 선언하는 방법
	@PostMapping("joinPro")
	public String joinPro(UserVO user, Model model) {
		
		// UserService - joinPro() 메서드 호출하여 학생정보 등록 요청
		// -------------------------------------------------------------------
		// [ 스프링에서 의존 관계에 있는 객체 생성 방법 ]
		// 1. 직접 인스턴스를 생성하는 방법
//				MemberService service = new MemberService();
		// => 단, 스프링에서는 의존성 객체 자동 주입(DI) 기능으로 객체 직접 생성 불필요
		// ----------------
		// 2. 생성자를 통해 의존성 객체 자동으로 주입받는 방법 or
		// 3. Setter 메서드를 통해 의존성 객체를 주입받는 방법 or
		// 4. 의존성 주입받을 멤버변수 선언 시 @Autowired 어노테이션을 지정
		// => 위의 세 가지 방법 중 어느 방법을 사용하더라도 직접 인스턴스 생성 없이도
		//    DI 에 의해 객체가 자동으로 주입되므로 service 멤버변수를 통해 바로 메서드 호출 가능
//				service.joinPro();
		// ----------------------------------------------------------------------------
		// UserService - joinPro() 메서드 호출하여 멤버정보 등록 요청
		// => 파라미터 : UserVO 객체   리턴타입 : int(insertCount)
		
		int insertCount = service.joinUser(user);
		
		if(insertCount == 0) {
			model.addAttribute("msg", "멤버정보 등록 실패!");
			return "cinepick/login_join/fail_back";
		}
		model.addAttribute("msg", "멤버정보 등록 성공!");
		
		return "cinepick/login_join/success";
	}
	
	
}
