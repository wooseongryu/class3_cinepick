package com.itwillbs.cinepick.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.BookingService;
import com.itwillbs.cinepick.service.LikeMovieService;
import com.itwillbs.cinepick.service.ReviewService;
import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.BookVO;
import com.itwillbs.cinepick.vo.LikeMovieVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.ReviewVO;
import com.itwillbs.cinepick.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	@Autowired
	private LikeMovieService likeService;
	
	@Autowired
	private BookingService bookingService;

	
	
	
	
	/*====================================================================
	 * - 목차 -
	 * 1. 유저 마이페이지
	 * 2. 내 정보 관리 (유저 정보 변경, 탈퇴 및 로그아웃)
	 * 3. 예매 내역 목록
	 * 4. 스토어 결제 내역 목록
	 * 5. 내가 쓴 리뷰 목록
	 * 6. 1:1문의 목록
	 * 7. 예매 취소 내역 목록
	 * 8. 스토어 취소 내역 목록
	 * 9. 찜한 영화 내역 목록
	 * ===================================================================
	 * */
	
	
	/*====================================================================
	 * 1. 유저 마이페이지
	 * ===================================================================
	 * */
	
	
	// 유저 마이페이지 메인
	@GetMapping("user")
	public String user(HttpSession session, Model model) {
		System.out.println("UserController - user");
		String sId = (String)session.getAttribute("sId");

		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}

		Map<String, String> param = new HashMap<String, String>();
		param.put("user_id", sId);

		List<BookVO> bookList = service.selectUserBookList(param);

		model.addAttribute("bookList", bookList);
		
		
		
		
		
		// 엄성윤 추가, 가장 최근 예매 내역 티켓으로 표현
		
		if(bookList != null) {
			BookVO ticketBook = bookingService.getUserRecentBook(param);
			model.addAttribute("ticketBook", ticketBook);
		}
		
		// ======================
		
		
		
		
		
		
		
		return "mypage/user/user_mypage";
	}
	
	
	
	/*====================================================================
	 * 2. 내 정보 관리 (유저 정보 변경, 탈퇴 및 로그아웃)
	 * ===================================================================
	 * */
	
	// 유저 로그아웃
	@GetMapping("userLogout")
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 성공 - 메인페이지로 이동합니다");
		
		// 메인페이지로 리다이렉트
		return "redirect:/";
	}
	
	// 유저 정보 변경 폼으로 이동
	@GetMapping("userUpdate")
	public String userUpdate(
						UserVO user, 
						HttpSession session, 
						Model model
						) {
		String sId = (String)session.getAttribute("sId");
		
		// 세션 아이디가 없을 경우 "fail_back" 페이지를 통해 "잘못된 접근입니다!" 출력
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
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
	public String UpdatePro(UserVO user, Model model, 						
						@RequestParam("user_passwd") String user_passwd,
						@RequestParam("user_passwd2") String user_passwd2
							) {
		
		
		if(!user_passwd.equals(user_passwd2)) {
			model.addAttribute("msg", "비밀번호가 같지 않습니다");
			return "fail_back";
		}
		
		
		
		// 1. BcryptPasswordEncoder 클래스 인스턴스 생성
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		// 2. BcryptPasswordEncoder 객체의 encode() 메서드를 호출하여 
		//    원문(평문) 패스워드에 대한 해싱(= 암호화) 수행 후 결과값 저장
		String securePasswd = passwordEncoder.encode(user.getUser_passwd());
		
		// 3. 암호화 된 패스워드를 UserVO 객체에 저장
		user.setUser_passwd(securePasswd);
		
		// ---------------------------------------------------------------------
		// service - updateUser() 메서드 호출하여 회원가입 작업 요청
		
		int updateCount = service.updateUser(user);
		
		if(updateCount > 0) { // 성공
			model.addAttribute("msg", "회원정보변경 성공!");
			return "cinepick/login_join/success";
		} else { // 실패
			model.addAttribute("msg", "회원정보변경 실패!");
			return "fail_back";
		}
		
	}
	
	// 회원탈퇴 폼으로 이동
	@GetMapping("userOut")
	public String userOut(UserVO user, HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");

		// 세션 아이디가 없을 경우 "fail_back" 페이지를 통해 "잘못된 접근입니다!" 출력
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		// 만약, 현재 세션이 관리자가 아니거나 또는 관리자이면서 id 파라미터가 없을 경우
		// id 변수값을 세션 아이디로 교체
		if(!sId.equals("admin") || (sId.equals("admin") && user.getUser_id() == null || user.getUser_id().equals(""))) {
			user.setUser_id(sId);
		}
		
		System.out.println("user : " + user);
		
		
		// UserService - getdeleteUser() 메서드를 호출하여 회원 탈퇴 정보 요청
		// => 파라미터 : UserVO 객체   리턴타입 : UserVO(deleteDbUser)
		UserVO deleteDbUser = service.getdeleteUser(user);
		
		// 회원 상세정보를 Model 객체에 저장
		model.addAttribute("user", deleteDbUser);
		
		System.out.println(user);
		
		return "mypage/user/user_out";
	}

	// 회원탈퇴 처리
	@PostMapping("userOutPro")
	public String userOutPro(UserVO user, Model model, HttpSession session) {
		System.out.println("UserController - userOutPro");
		
		int dupCount = 1;
		String deleteEmail = "";
		
		while (true) {
			deleteEmail = RandomStringUtils.randomAlphabetic(20);
			dupCount = service.checkDuplicateEmail(deleteEmail);
			if (dupCount == 0) {
				break;
			}
		}
		
		
		user.setUser_email(deleteEmail);
		
		int deleteCount = service.deleteUser(user);
		
		if(deleteCount > 0) { // 회원탈퇴 성공
			model.addAttribute("msg", "회원탈퇴가 되었습니다. 메인페이지로 이동합니다");
			session.invalidate();
			return "cinepick/login_join/success";
		} else { // 회원탈퇴 성공
			model.addAttribute("msg","회원탈퇴 실패!");
			return "fail_back";
		}
	}
	
	
	
	/*====================================================================
	 * 3. 예매 내역 목록
	 * ===================================================================
	 * */
	
	// 예매 내역 목록
	@GetMapping("userMoviePurchaseList")
	public String userMoviePurchaseList(HttpSession session, Model model) {
		
		System.out.println("UserController - userMoviePurchaseList");
		
		String sId = (String)session.getAttribute("sId");
		 
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("user_id", sId);
		
		List<BookVO> bookList = service.getBookList(param);
		
		model.addAttribute("bookList", bookList);
		
		System.out.println("아이디는 " + sId);
		
		
		// 엄성윤 추가, 가장 최근 예매 내역 티켓으로 표현
		
//		if(bookList != null) {
//			BookVO ticketBook = bookingService.getUserRecentBook(sId);
//			model.addAttribute("ticketBook", ticketBook);
//		}
		
		// ======================
		
		return "mypage/user/user_movie_purchase_list";
	}
	
	/*====================================================================
	 * 4. 스토어 결제 내역 목록
	 * ===================================================================
	 * */
	
	// 스토어 결제 내역 목록
	@GetMapping("userStorePurchaseList")
	public String userStorePurchaseList() {
		System.out.println("UserController - userStorePurchaseList");
		return "mypage/user/user_store_purchase_list";
	}
	
	/*====================================================================
	 * 5. 내가 쓴 리뷰 목록
	 * ===================================================================
	 * */
	
	
	// 내가 쓴 리뷰 목록
	@GetMapping("userMyReviewList")
	public String userMyReviewList(HttpSession session, Model model) {
		System.out.println("UserController - userMyReviewList");
		
		String sId = (String)session.getAttribute("sId");
		 
		Map<String, String> param = new HashMap<String, String>();
		param.put("user_id", sId);

		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		
		List<ReviewVO> reviewList = service.getReviewList(param);
		
		model.addAttribute("reviewList", reviewList);
		
		return "mypage/user/user_myReview";
	}
	
	
	
	
	// 내가 쓴 리뷰 삭제
	@GetMapping("myReviewDelete")
	public String myReviewDelete(HttpSession session, Model model, int review_num) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = service.myReviewDelete(review_num);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/userMyReviewList";
		
	}
	
	/*====================================================================
	 * 6. 1:1문의 목록
	 * ===================================================================
	 * */
	
	// 1:1문의 목록 조회
	@GetMapping("userMyQuestionList")
	public String userMyQuestionList(Model model, HttpSession session) {
		System.out.println("UserController - userMyQuestionList");
		String sId = (String)session.getAttribute("sId");
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("myQuestion_id", sId);
		
		// 세션 아이디가 없을 경우 "fail_back" 페이지를 통해 "잘못된 접근입니다!" 출력
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		 
		List<MyQuestionVO> myQuestionList = service.getMyQuestion(param);
		
		model.addAttribute("myQuestionList", myQuestionList);
		
		return "mypage/user/user_mqList";
	}
	
	
	
	/*====================================================================
	 * 7. 예매 취소 내역 목록
	 * ===================================================================
	 * */
	
	// 예매 취소 내역 목록
	@GetMapping("userMovieCancelList")
	public String userMovieCancelList() {
		System.out.println("UserController - userMovieCancelList");
		return "mypage/user/user_movie_cancel_list";
	}
	
	/*====================================================================
	 * 8. 스토어 취소 내역 목록
	 * ===================================================================
	 * */
	
	// 스토어 취소 내역 목록
	@GetMapping("userStoreCancelList")
	public String userStoreCancelList() {
		System.out.println("UserController - userStoreCancelList");
		return "mypage/user/user_store_cancel_list";
	}
	
	/*====================================================================
	 * 9.영화 찜 목록
	 * ===================================================================
	 * */
	
	@GetMapping("userLikeMovieList")
	public String userLikeMovieList(HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<LikeMovieVO> likeList = service.selectLikeMovieList(sId);
		model.addAttribute("likeList", likeList);
		
		return "mypage/user/user_movieLike_list";
	}
	
	@ResponseBody
	@GetMapping("userLikeMovieDelete")
	public int userLikeMovieDelete(@RequestParam("user_id") String user_id, @RequestParam("movie_code") int movie_code) {
		
		int deleteCount = likeService.deleteLikeBtn(user_id, movie_code);
		
		return deleteCount;
	}
	
	
}
