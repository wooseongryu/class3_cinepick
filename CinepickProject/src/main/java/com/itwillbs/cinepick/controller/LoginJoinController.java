package com.itwillbs.cinepick.controller;


import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.SendMailService;
import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.AuthInfoVO;
import com.itwillbs.cinepick.vo.UserVO;

@Controller
public class LoginJoinController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private SendMailService mailService;
	
	// 회원가입
	@GetMapping("join")
	public String join() {
		System.out.println("LoginJoinController - join");
		return "cinepick/login_join/join";
	}
	
	// "/MemberJoinPro" 요청에 대해 비즈니스 로직 처리를 수행할 joinPro() 메서드 정의
	@PostMapping("joinPro")
	public String joinPro(UserVO user, Model model) {
		
		// 1. BcryptPasswordEncoder 클래스 인스턴스 생성
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		// 2. BcryptPasswordEncoder 객체의 encode() 메서드를 호출하여 
		//    원문(평문) 패스워드에 대한 해싱(= 암호화) 수행 후 결과값 저장
		String securePasswd = passwordEncoder.encode(user.getUser_passwd());
		
		// 3. 암호화 된 패스워드를 MemberVO 객체에 저장
		user.setUser_passwd(securePasswd);
		
		// ---------------------------------------------------------------------
		// UserService - registMember() 메서드 호출하여 회원가입 작업 요청
		
		int insertCount = service.joinUser(user);
		
		if(insertCount > 0) { // 성공
			
			String authCode = mailService.sendAuthMail(user.getUser_id(), user.getUser_email());
			
			model.addAttribute("msg", "회원가입 성공!");
			service.registAuthInfo(user.getUser_id(), authCode);
			
			return "cinepick/login_join/success";
		} else { // 실패
			model.addAttribute("msg", "회원가입 실패!");
			return "fail_back";
		}
	}	
	// "/UserJoinSuccess" 요청에 대해 "member/member_join_success.jsp" 페이지 포워딩
	@GetMapping("/UserJoinSuccess")
	public String JoinSuccess() {
		return "cinepick/login_join/success";
	}
	
	// ----------------------------------------
	// "/UserEmailAuth" 서블릿 요청에 대해 인증 작업 요청
	// => 아이디와 이메일 파라미터를 저장할 AuthInfoVO 타입 파라미터 선언 
	@GetMapping("/UserEmailAuth")
	public String emailAuth(AuthInfoVO authInfo, Model model) {
//		System.out.println("이메일에 포함된 인증정보 : " + authInfo);
		
		// UserService - emailAuth() 메서드를 호출하여 인증 요청
		// => 파라미터 : AuthInfoVO 객체   리턴타입 : boolean(isAuthSuccess)
		boolean isAuthSuccess = service.emailAuth(authInfo);
		
		// 인증 수행 결과 판별
		// 성공 시 인증 성공 메세지, 로그인폼 URL 을 포함하여 "forward.jsp" 페이지로 포워딩
		// 실패 시 인증 실패 메세지를 포함하여 "fail_back.jsp" 페이지로 포워딩
		if(isAuthSuccess) { // 성공
			model.addAttribute("msg", "인증 성공! 로그인 페이지로 이동합니다!"); // 출력할 메세지
			model.addAttribute("targetURL", "login"); // 이동시킬 페이지
			return "cinepick/login_join/forward";
		} else { // 실패
			model.addAttribute("msg", "인증 실패!");
			return "cinepick/login_join/fail_back";
		}
	}
	
	@ResponseBody
	@GetMapping("UserCheckDupId")
	public String checkDupId(UserVO user) {
		System.out.println("UserCheckDupId-----------------");
		
		UserVO returnUser = service.getUser(user);
		System.out.println("))))))))))))))))))))))))))))");
		System.out.println(user);
		
		if(returnUser != null) { // 아이디 중복
			return "true"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "true" 문자열 리턴
		} else { // 아이디 사용 가능
			return "false"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "false" 문자열 리턴
		}
		
	}
	
	
	// 로그인 폼으로 이동
	@GetMapping("login")
	public String login() {
		System.out.println("LoginJoinController - login");
		return "cinepick/login_join/login";
	}
	
	// 로그인 처리
	@PostMapping("loginPro")
	public String loginPro(
			UserVO user, @RequestParam(required = false) boolean rememberId,
			HttpSession session, Model model, HttpServletResponse response) {
		
		// BCryptPasswordEncoder 객체를 활용한 패스워드 비교
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		UserVO dbUser = service.getUser(user);
		
		if(dbUser == null || !passwordEncoder.matches(user.getUser_passwd(), dbUser.getUser_passwd())) { // 로그인 실패
			model.addAttribute("msg", "인증 실패!");
			return "cinepick/login_join/fail_back";
			
		} else { // 로그인 성공
			if(dbUser.getMail_auth_status().equals("N")) { // 이메일 미인증 회원
				model.addAttribute("msg", "이메일 인증 후 로그인이 가능합니다!");
				return "cinepick/login_join/fail_back";
			} else { // 이메일 인증 회원
				// 세션 객체에 로그인 성공한 아이디를 "sId" 속성명으로 저장
				session.setAttribute("sId", user.getUser_id());
				session.setAttribute("isAdmin", dbUser.getUser_is_admin());
				
				Cookie cookie = new Cookie("cookieId", user.getUser_id());
				
				if(rememberId) {
					cookie.setMaxAge(60 * 60 * 24 * 30);
				} else {
					cookie.setMaxAge(0);
				}
				
				response.addCookie(cookie);
				
				System.out.println("성공적으로 로그인하였습니다 메인페이지로 이동합니다");
			}
		}
		
		return "redirect:/";
	}
	
	//"Logout" 요청에 대한 로그아웃 비즈니스 로직
	@GetMapping("Logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		// 메인페이지로 리다이렉트
		return "redirect:/";
	}

	// 아이디 찾기 폼으로 이동
	@GetMapping("idSearch")
	public String idSearch() {
		System.out.println("idSearch");
		
		return "cinepick/login_join/idSearch";
	}

	
	// 아이디 찾기 처리
	@PostMapping("idSearchPro")
	public String idSearchPro(
						UserVO user,
						@RequestParam String user_name, 
						@RequestParam String user_email, 
						Model model) {
		
		
		user.setUser_name(user_name);
		user.setUser_email(user_email);
		UserVO idSearch = service.userIdSearch(user);
		
		model.addAttribute("user", idSearch);
		
		
		
		return "cinepick/login_join/idSearchResult";
	}
	
	// 비밀번호 찾기 폼으로 이동
	@GetMapping("passwdSearch")
	public String passwdSearch() {
						
		System.out.println("passwdSearch");
		
		return "cinepick/login_join/passwdSearch";
	}
	
}
