package com.itwillbs.cinepick.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.MemberService;
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
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
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
		System.out.println("!@#!@#");
//		user.setKakao_id(user.getKakao_id().equals("") ? null : user.getKakao_id());  
		System.out.println(user);
		
		int insertCount = service.joinUser(user);
		
		if (insertCount < 1) {
			model.addAttribute("msg", "회원가입 실패!");
			return "fail_back";
		}
		
		int updateCount = service.updateKakaoId(user);
		if (updateCount < 1) {
			model.addAttribute("msg", "카카오 연동 실패");
			return "fail_back";
		}
		
		String authCode = mailService.sendAuthMail(user.getUser_id(), user.getUser_email());
		
		model.addAttribute("msg", "회원가입 성공!");
		service.registAuthInfo(user.getUser_id(), authCode);
		
		return "cinepick/login_join/success";
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
		System.out.println(user);
		
		if(returnUser != null) { // 아이디 중복
			return "true"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "true" 문자열 리턴
		} else { // 아이디 사용 가능
			return "false"; // 리턴타입 String 일 때 응답 데이터로 String 타입 "false" 문자열 리턴
		}
		
	}

	@ResponseBody
	@GetMapping("UserCheckDupEmail")
	public String checkDupEmail(UserVO user) {
		
		UserVO returnUser = service.getUser(user);
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
			model.addAttribute("msg", "로그인 실패!");
			return "cinepick/login_join/fail_back";
			
		} else { // 로그인 성공
			if(dbUser.getMail_auth_status().equals("N")) { // 이메일 미인증 회원
				model.addAttribute("msg", "이메일 인증 후 로그인이 가능합니다!");
				return "cinepick/login_join/fail_back";
			} else { // 이메일 인증 회원
				if(dbUser.getUser_status().equals("탈퇴")) {
					model.addAttribute("msg", "탈퇴한 회원입니다!");
					return "cinepick/login_join/fail_back";
				}
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
	
	// 비밀번호 찾기 처리
	@PostMapping("passwdSearchPro")
	public String passwdSearchPro(UserVO user, Model model) {
		System.out.println("LoginJoinController - passwdSearchPro()");
		
		int passwdSearchCount = service.userPasswdSearch(user);
		
		if (passwdSearchCount < 1) {
			model.addAttribute("msg", "일치하는 정보가 없습니다.");
			return "fail_back";
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String newPasswd = RandomStringUtils.randomAlphabetic(10);
//		System.out.println("새로운 비밀번호))))))))))))" + newPasswd);
		String securePasswd = passwordEncoder.encode(newPasswd);
		user.setUser_passwd(securePasswd);
		
		int updateCount = service.userPasswdChange(user);
		
		if (updateCount < 0) {
			model.addAttribute("msg", "비밀번호 변경 실패.");
			return "fail_back";
		}
		
		mailService.sendPasswd(user.getUser_id(), user.getUser_email(), newPasswd);
		
		model.addAttribute("msg", "임시 비밀번호가 발송 되었습니다.");
		model.addAttribute("targetURL", "login");
		return "forward";
	}
	
	@Autowired
	private MemberService ms;

	@GetMapping("kakao/callback")
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code
								,Model model
								, HttpSession session
								, UserVO user) throws Exception {
		System.out.println("LoginJoinController - kakao/callback()");
		
		String access_Token = ms.getAccessToken(code);
		
		HashMap<String, Object> userInfo = ms.getUserInfo(access_Token);
		
		if (userInfo.get("id") == null) {
			model.addAttribute("msg", "다시 시도해주세요");
			return "fail_back";
		}
		
		String kakao_id = (String)userInfo.get("id");
		
    	UserVO dbMember = service.getMemberKakaoLogin(kakao_id);
    	
    	String user_id = (String)session.getAttribute("sId");
    	if (user_id != null) {  // 로그인이 된 상태에서 유저 정보에서 변경
    		if(dbMember != null) {  // 중복 가입 방어.
    			model.addAttribute("msg", "이미 연동된 카카오계정입니다.");
    			return "fail_back";
    		}
    		
    		user.setUser_id(user_id);
    		user.setKakao_id(kakao_id);
    		int updateCount = service.updateKakaoId(user);
    		
    		if (updateCount < 1) {
    			model.addAttribute("msg", "카카오 연동 실패");
    			return "fail_back";
    		}
    		
    		model.addAttribute("msg", "카카오 연동이 완료 되었습니다.");
    		model.addAttribute("targetURL", "/cinepick/userUpdate");
    		
    		return "forward";
    	}
    	
    	if(dbMember != null) {  // 카카오 가입 되어있음. 로그인.
    		session.setAttribute("kakao_id", kakao_id);
            session.setAttribute("access_Token", access_Token);
            session.setAttribute("sId", dbMember.getUser_id());
            session.setAttribute("isAdmin", dbMember.getUser_is_admin());
            
			return "redirect:/";
    	}
		
    	// 카카오정보 없음. 새로 가입.
		session.setAttribute("kakao_id", (String)userInfo.get("id"));
        session.setAttribute("access_Token", access_Token);
        
        model.addAttribute("msg", "입력된 정보가 없습니다. 회원가입 페이지로 이동합니다.");
		model.addAttribute("targetURL", "/cinepick/join");
		
		return "forward";
	}
	
	@GetMapping("kakao/Logout")
	public String kakaoLogout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
}
