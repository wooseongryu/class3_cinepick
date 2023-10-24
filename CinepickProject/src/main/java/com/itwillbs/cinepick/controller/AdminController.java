package com.itwillbs.cinepick.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;
import com.itwillbs.cinepick.vo.ScheduleVO;
import com.itwillbs.cinepick.vo.ScreenVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.UserVO;

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
	
	// 관리자 마이 페이지
	@GetMapping("admin")
	public String admin(HttpSession session, Model model) {
		System.out.println("AdminController - admin()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		return "mypage/admin/admin_mypage";
	}
	
	/*====================================================================
	 * 2. 관리자 로그아웃, 정보 관리 및 탈퇴
	 * ===================================================================
	 * */
	
	
	// 관리자 로그아웃
	// "/userLogout" 요청에 대한 로그아웃 비즈니스 로직
	@GetMapping("adminLogout")
	public String logout(HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		session.invalidate();
		
		// 메인페이지로 리다이렉트
		return "redirect:/";
	}
	
	// 관리자 정보 변경
	@GetMapping("adminUpdate")
	public String userUpdate(UserVO user, HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		user.setUser_id(sId);
		
		// UserService - getUser() 메서드를 호출하여 회원 상세정보 조회 요청
		// => 파라미터 : UserVO 객체   리턴타입 : UserVO(dbUser)
		UserVO dbUser = userService.getUser(user);
		
		// 회원 상세정보를 Model 객체에 저장
		model.addAttribute("user", dbUser);
//		System.out.println(user);
		
		return "mypage/admin/board_admin_update";
	}
	
	
	
	// 관리자 정보 변경 처리
	@PostMapping("adminUpdatePro")
	public String UpdatePro(UserVO user, Model model) {
	
		// 1. BcryptPasswordEncoder 클래스 인스턴스 생성
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		// 2. BcryptPasswordEncoder 객체의 encode() 메서드를 호출하여 
		//    원문(평문) 패스워드에 대한 해싱(= 암호화) 수행 후 결과값 저장
		String securePasswd = passwordEncoder.encode(user.getUser_passwd());
		
		// 3. 암호화 된 패스워드를 UserVO 객체에 저장
		user.setUser_passwd(securePasswd);
		
		// ---------------------------------------------------------------------
		// UserService - updateUser() 메서드 호출하여 회원가입 작업 요청
		
		int updateCount = userService.updateUser(user);
		
		if(updateCount > 0) { // 성공
			model.addAttribute("msg", "관리자정보변경 성공!");
			model.addAttribute("targetURL", "admin");
			return "forward";
		} else { // 실패
			model.addAttribute("msg", "관리자정보변경 실패!");
			return "fail_back";
		}
		
	}
	
	// 관리자 회원 탈퇴 페이지
	@GetMapping("adminOut")
	public String adminOut(UserVO user, HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}

		user.setUser_id(sId);
		
		// UserService - getdeleteUser() 메서드를 호출하여 관리자 탈퇴 정보 요청
		// => 파라미터 : UserVO 객체   리턴타입 : UserVO(deleteDbUser)
		UserVO deleteDbUser = userService.getdeleteUser(user);
		
		// 관리자 상세정보를 Model 객체에 저장
		model.addAttribute("user", deleteDbUser);
		
		System.out.println(user);
		
		return "mypage/admin/board_admin_out";
	}
		
	// 회원탈퇴 처리
	@PostMapping("adminOutPro")
	public String adminOutPro(UserVO user, Model model) {
		System.out.println("UserController - userOutPro");
		
		// 1. BcryptPasswordEncoder 클래스 인스턴스 생성
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		// 2. BcryptPasswordEncoder 객체의 encode() 메서드를 호출하여 
		//    원문(평문) 패스워드에 대한 해싱(= 암호화) 수행 후 결과값 저장
		String securePasswd = passwordEncoder.encode(user.getUser_passwd());
		
		// 3. 암호화 된 패스워드를 UserVO 객체에 저장
		user.setUser_passwd(securePasswd);
		
		//-------------------------------------
		
		int deleteCount = userService.deleteUser(user);
		
		System.out.println("UserController - userOutPro");
		
		if(deleteCount > 0) { // 회원탈퇴 성공
			model.addAttribute("msg", "회원탈퇴가 되었습니다. 메인페이지로 이동합니다");
			model.addAttribute("targetURL", "./");
			return "forward";
		} else {
			model.addAttribute("msg","회원탈퇴 실패!");
			return "fail_back";
		}
	}
	
	
	
	/*====================================================================
	 * 3. 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	// 관리자 회원정보 관리 페이지
	@GetMapping("adminUserList")
	public String adminUserList(Model model, HttpSession session) {
		System.out.println("AdminController - adminUserList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<UserVO> userList = userService.getUserList();
		// Model 객체에 List 객체 저장
		model.addAttribute("userList", userList);
		
		return "mypage/admin/board_user";
	}
	
	// 관리자 권한 부여/해제
	@GetMapping("adminUserAuthorize")
	public String adminUserAuthorize(UserVO user, HttpSession session, Model model) {
		System.out.println("AdminController - adminUserAuthorize()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int updateCount = adminService.updateUserAuthorize(user);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "권한 부여 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminUserList";
	}
	
	/*====================================================================
	 * 4. 영화
	 * ===================================================================
	 * */
//	
//	// 관리자 영화 정보 목록
//
//	@GetMapping("adminMovieList")
//	public String adminMovieList() {
//		System.out.println("AdminController - adminMovieList()");
//		return "mypage/admin/board_movie";
//	}
//	
//	// 관리자 영화 정보 등록 폼
//	@GetMapping("adminMovieInsert")
//	public String adminMovieInsert() {
//		System.out.println("AdminController - adminMovieInsert()");
//		return "mypage/admin/insert_movie";
//	}
//	// 관리자 영화 정보 등록 폼
//	@PostMapping("adminMovieInsert2")
//	public String adminMovieInsert2(String movieList) {
//		System.out.println(movieList);
//		JSONArray ja = new JSONArray(movieList);
//		
//		System.out.println(ja.toString());
//		for(int i = 0; i < ja.length(); i++) {
//			JSONObject jo = new JSONObject(ja.get(i).toString());
//			System.out.println(jo.toString());
//			Map<String, Object> map = jo.toMap(); 
//			
//			//db로 넣기 작업
//		}
//			System.out.println("AdminController - adminMovieInsert2()");
//			return "mypage/admin/update_movie";
//		}
//	
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
	
	// 관리자 상영 시간표 상영관 조회
	@ResponseBody
	@PostMapping("adminScheduleScreen")
	public String adminScheduleScreen(int screen_theater_idx, Gson gson) {
		System.out.println("AdminController - adminScheduleScreen()");
		
		return gson.toJson(adminService.selectScreen(screen_theater_idx));
	}

	// 관리자 상영 시간표 초기 출력값 조회
	@ResponseBody
	@PostMapping("adinScheduleInitInfo")
	public String adinScheduleInitInfo(Gson gson, Map<String, Object> map) {
		System.out.println("AdminController - adinScheduleInitInfo()");
		
		List<TheaterVO> theater = adminService.selectTheater();
		TheaterVO vo = theater.get(0);

		// 등록된 극장이 있을 때만 상영관 가져오기.
		if (vo != null) {
			map.put("screen", adminService.selectScreen(vo.getTheater_idx()));
		}
		
		map.put("theater", theater);
		map.put("movie", adminService.selectMovie());
		
		return gson.toJson(map);
	}
	
	@ResponseBody
	@PostMapping("adminScheduleCheck")
	public String adminScheduleCheck(ScheduleVO schedule) {
		System.out.println("AdminController - adminScheduleCheck()");
		
		// 조회...
//		Map map = adminService.scheduleCheck(schedule);
		
		
		// 등록...???
//		int time = adminService.selectMovieRunTime(schedule.getSche_movie_code());
//		schedule.setSche_end_time(schedule.getSche_start_time().plusMinutes(time));
		
		
		
		
//		System.out.println(schedule);
		
		return "";
	}
	
	/*====================================================================
	 * 6. 공지사항
	 * ===================================================================
	 * */
	
	// 관리자 공지사항 조회 페이지
	@GetMapping("adminNoticeList")
	public String adminNoticeList(Model model, HttpSession session) {
		System.out.println("AdminController - adminNoticeList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<NoticeVO> noticeList = adminService.getNotice("");
		model.addAttribute("noticeList", noticeList);
		
		return "mypage/admin/board_notion";
	}
	
	// 관리자 공지사항 등록 폼
	@GetMapping("adminNoticeInsert")
	public String adminNoticeInsert(HttpSession session, Model model) {
		System.out.println("AdminController - adminNoticeInsert()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		return "mypage/admin/insert_notion";
	}
	
	// 관리자 공지사항 등록
	@PostMapping("adminNoticeInsertPro")
	public String adminNoticeInsertPro(NoticeVO notice, Model model) {
		System.out.println("AdminController - adminNoticeInsertPro()");
		int insertCount = adminService.insertNotice(notice);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminNoticeList";
	}
	
	// 관리자 공지사항 삭제
	@GetMapping("adminNoticeDelete")
	public String adminNoticeDelete(int noticeIdx, Model model, HttpSession session) {
		System.out.println("AdminController - adminNoticeDelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = adminService.deleteNotice(noticeIdx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminNoticeList";
	}
	
	// 관리자 공지사항 수정 폼
	@GetMapping("adminNoticeUpdate")
	public String adminNoticeUpdate(String noticeIdx, Model model, HttpSession session) {
		System.out.println("AdminController - adminNoticeUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		NoticeVO notice = adminService.getNotice(noticeIdx).get(0);
		model.addAttribute("notice", notice);
		
		return "mypage/admin/update_notion";
	}
	
	// 관리자 공지사항 수정
	@PostMapping("adminNoticeUpdatePro")
	public String adminNoticeUpdatePro(NoticeVO notice, Model model) {
		System.out.println("AdminController - adminNoticeUpdatePro()");
		int updateCount = adminService.updateNotice(notice);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminNoticeList";
	}

	/*====================================================================
	 * 7. 자주 묻는 질문
	 * ===================================================================
	 * */
	
	// 관리자 자주 묻는 질문 조회 페이지
	@GetMapping("adminQNAList")
	public String adminQNAList(Model model, HttpSession session) {
		System.out.println("AdminController - adminQNAList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaVO> qnaList = adminService.getQna("");
		model.addAttribute("qnaList", qnaList);
		
		return "mypage/admin/board_question";
	}
	
	// 관리자 자주 묻는 질문 등록 폼
	@GetMapping("adminQNAInsert")
	public String adminQNAInsert(Model model, HttpSession session) {
		System.out.println("AdminController - adminQNAInsert()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaCateVO> categoryList = adminService.getCategory();
		
		model.addAttribute("categoryList", categoryList);
		return "mypage/admin/insert_question";
	}
	
	// 관리자 자주묻는 질문 등록
	@PostMapping("adminQNAInsertPro")
	public String adminQNAInsertPro(QnaVO qna, Model model) {
		System.out.println("AdminController - adminQNAInsertPro()");
		int insertCount = adminService.insertQna(qna);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminQNAList";
	}
	
	// 관리자 자주묻는 질문 수정 폼
	@GetMapping("adminQNAUpdate")
	public String adminQNAUpdate(Model model, String qnaIdx, HttpSession session) {
		System.out.println("AdminController - adminQNAUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaCateVO> categoryList = adminService.getCategory();
		QnaVO qna = adminService.getQna(qnaIdx).get(0);
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("qna", qna);
		
		return "mypage/admin/update_question";
	}
	
	// 관리자 자주묻는 질문 수정
	@PostMapping("adminQNAUpdatePro")
	public String adminQNAUpdatePro(QnaVO qna, Model model) {
		System.out.println("AdminController - adminQNAUpdatePro()");
		int updateCount = adminService.updateQna(qna);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminQNAList";
	}
	
	// 관리자 자주묻는 질문 삭제
	@GetMapping("adminQNADelete")
	public String adminQNADelete(Model model, String qnaIdx, HttpSession session) {
		System.out.println("AdminController - adminQNADelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = adminService.deleteQna(qnaIdx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminQNAList";
	}
	
	/*====================================================================
	 * 8. 자주 묻는 질문 카테고리
	 * ===================================================================
	 * */
	
	// 관리자 질문카테고리 관리 페이지 및 폼
	@GetMapping("adminCategoryUpdate")
	public String adminCategoryUpdate(Model model, HttpSession session) {
		System.out.println("AdminController - adminCategoryUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<QnaCateVO> categoryList = adminService.getCategory();
		
		model.addAttribute("categoryList", categoryList);
		
		return "mypage/admin/update_category";
	}
	
	// 관리자 질문카테고리 등록
	@PostMapping("adminCategoryUpdatePro")
	public String adminCategoryUpdatePro(String qnaCateSubject, Model model) {
		System.out.println("AdminController - adminCategoryUpdatePro()");
		
		List<QnaCateVO> categoryList = adminService.getCategory();
		for (QnaCateVO cate : categoryList) {
			if (qnaCateSubject.equals(cate.getQnaCateSubject())) {
				model.addAttribute("msg", "중복된 카테고리입니다!");
				return "fail_back";
			}
		}
		
		int insertCount = adminService.insertCategory(qnaCateSubject);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminCategoryUpdate";
	}
	
	// 관리자 질문카테고리 삭제
	@GetMapping("adminCategoryDelete")
	public String adminCategoryDelete(int qnaCateIdx, HttpSession session, Model model) {
		System.out.println("AdminController - adminCategoryDelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int deleteCount = adminService.deleteCategory(qnaCateIdx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminCategoryUpdate";
	}
	
	/*====================================================================
	 * 9. 1:1 문의
	 * ===================================================================
	 * */
	
	// 관리자 1:1문의 조회 페이지
	@GetMapping("adminOneToOneList")
	public String adminOneToOneList(Model model, HttpSession session) {
		System.out.println("AdminController - adminOneToOneList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<MyQuestionVO> questionList = adminService.selectOTO("");
		
		model.addAttribute("questionList", questionList);
		
		return "mypage/admin/board_personal_inquiry";
	}
	
	// 관리자 1:1문의 답변 등록 폼
	@GetMapping("adminOneToOneUpdate")
	public String adminOneToOneUpdate(String myQuestion_num, Model model, HttpSession session) {
		System.out.println("AdminController - adminOneToOneUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		MyQuestionVO question = adminService.selectOTO(myQuestion_num).get(0);
		
		model.addAttribute("question", question);
		
		return "mypage/admin/update_personal_inquiry";
	}
	
	// 관리자 1:1문의 답변 등록
	@PostMapping("adminOneToOneUpdatePro")
	public String adminOneToOneUpdatePro(MyQuestionVO myQuestion, Model model) {
		System.out.println("AdminController - adminOneToOneUpdatePro()");
		int insertCount = adminService.updateOTO(myQuestion);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		return "redirect:/adminOneToOneList";
	}
	
	@GetMapping("adminOneToOneSelect")
	public String adminOneToOneSelect(String myQuestion_num, Model model, HttpSession session) {
		System.out.println("AdminController - adminOneToOneSelect()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		MyQuestionVO question = adminService.selectOTO(myQuestion_num).get(0);
		
		model.addAttribute("question", question);
		
		return "mypage/admin/select_personal_inquiry";
	}
	
	/*====================================================================
	 * 10. 이벤트
	 * ===================================================================
	 * */
	
	// 관리자 이벤트 목록 조회 페이지
	@GetMapping("adminEventList")
	public String adminEventList(EventVO event, Model model, HttpSession session) {
		System.out.println("AdminController - adminEventList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<EventVO> eventList = adminService.selectEvent("");
		
		LocalDate now = LocalDate.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatedNow = now.format(dtf);
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        try {
			Date nowDate = formatter.parse(formatedNow);

			for (EventVO e : eventList) {
				Date eventEndDate = formatter.parse(e.getEvent_endDt());
				Date eventStartDate = formatter.parse(e.getEvent_startDt());
				
				if (eventStartDate.compareTo(nowDate) > 0) {
					e.setEvent_status("대기");
					continue;
				}
				
				if (eventEndDate.compareTo(nowDate) < 0) {
					e.setEvent_status("종료");
				} else {
					e.setEvent_status("진행중");
				}
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("eventList", eventList);
		
		return "mypage/admin/board_event";
	}
	
	// 관리자 이벤트 등록 폼
	@GetMapping("adminEventInsert")
	public String adminEventInsert(HttpSession session, Model model) {
		System.out.println("AdminController - adminEventInsert()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		return "mypage/admin/insert_event";
	}
	
	// 관리자 이벤트 등록
	@PostMapping("adminEventInsertPro")
	public String adminEventInsertPro(EventVO event, HttpSession session, Model model) {
		System.out.println("AdminController - adminEventInsertPro()");
		
		String uploadDir = "/resources/upload"; // 가상의 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		String subDir = ""; // 서브디렉토리명을 저장할 변수 선언(날짜로 구분)
		
		try {
			LocalDate now = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			subDir = now.format(dtf);
			saveDir += "/" + subDir;
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile_poster = event.getEvent_poster_multi();
		MultipartFile mFile_thumb = event.getEvent_thumbnail_multi();
		
		String uuid = UUID.randomUUID().toString();
		event.setEvent_poster("");
		String fileName_poster = uuid.substring(0, 8) + "_" + mFile_poster.getOriginalFilename();
		String fileName_thumb = uuid.substring(0, 8) + "_" + mFile_thumb.getOriginalFilename();
		
		if(!mFile_poster.getOriginalFilename().equals("")) {
			event.setEvent_poster(subDir + "/" + fileName_poster);
		}
		
		if(!mFile_thumb.getOriginalFilename().equals("")) {
			event.setEvent_thumbnail(subDir + "/" + fileName_thumb);
		}
		
		int insertCount = adminService.insertEvent(event);
		
		if (insertCount == 0) {
			model.addAttribute("msg", "등록 실패!");
			return "fail_back";
		}
		
		// 실제폴더에 저장.
		try {
			if(!mFile_poster.getOriginalFilename().equals("")) {
				mFile_poster.transferTo(new File(saveDir, fileName_poster));
			}
			if(!mFile_thumb.getOriginalFilename().equals("")) {
				mFile_thumb.transferTo(new File(saveDir, fileName_thumb));
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/adminEventList";
	}
	
	// 관리자 이벤트 수정 폼
	@GetMapping("adminEventUpdate")
	public String adminEventUpdate(String event_idx, Model model, HttpSession session) {
		System.out.println("AdminController - adminEventUpdate()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		EventVO event = adminService.selectEvent(event_idx).get(0);
		
		model.addAttribute("event", event);
		
		return "mypage/admin/update_event";
	}
	
	// 관리자 이벤트 수정
	@PostMapping("adminEventUpdatePro")
	public String adminEventUpdatePro(EventVO event, HttpSession session, Model model) {
		System.out.println("AdminController - adminEventUpdatePro()");
		
		String uploadDir = "/resources/upload"; // 가상의 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		String subDir = ""; // 서브디렉토리명을 저장할 변수 선언(날짜로 구분)
		
		try {
			LocalDate now = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			subDir = now.format(dtf);
			saveDir += "/" + subDir;
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile_poster = event.getEvent_poster_multi();
		MultipartFile mFile_thumb = event.getEvent_thumbnail_multi();
		
		String uuid = UUID.randomUUID().toString();
		event.setEvent_poster("");
		String fileName_poster = uuid.substring(0, 8) + "_" + mFile_poster.getOriginalFilename();
		String fileName_thumb = uuid.substring(0, 8) + "_" + mFile_thumb.getOriginalFilename();
		
		if(!mFile_poster.getOriginalFilename().equals("")) {
			event.setEvent_poster(subDir + "/" + fileName_poster);
		}
		
		if(!mFile_thumb.getOriginalFilename().equals("")) {
			event.setEvent_poster(subDir + "/" + fileName_thumb);
		}
		
		// 수정전 기존의 파일경로 가지고 있어야됨.
		EventVO tmpEvent = adminService.selectEvent(String.valueOf(event.getEvent_idx())).get(0);
		
		int updateCount = adminService.updateEvent(event);
		
		if (updateCount == 0) {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
		// 실제폴더에 저장.
		try {
			if(!mFile_poster.getOriginalFilename().equals("")) {
				mFile_poster.transferTo(new File(saveDir, fileName_poster));
			}
			
			if(!mFile_thumb.getOriginalFilename().equals("")) {
				mFile_thumb.transferTo(new File(saveDir, fileName_thumb));
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 수정시 기존의 파일 삭제.
		String uploadPath = "resources/upload";
		try {
			String realPath = session.getServletContext().getRealPath(uploadPath);
			Path path = Paths.get(realPath + "/" + tmpEvent.getEvent_poster());
			Files.deleteIfExists(path);
			
			path = Paths.get(realPath + "/" + tmpEvent.getEvent_thumbnail());
			Files.deleteIfExists(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/adminEventList";
	}
	
	// 관리자 이벤트 삭제
	@GetMapping("adminEventDelete")
	public String adminEventDelete(String event_idx, HttpSession session, Model model) {
		System.out.println("AdminController - adminEventDelete()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		// 삭제하기전에 파일경로를 먼저 받아와야됨.
		EventVO tmpEvent = adminService.selectEvent(event_idx).get(0);
		
		int deleteCount = adminService.deleteEvent(event_idx);
		
		if (deleteCount == 0) {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
		
		// 삭제시 파일 도 함께 삭제.
		String uploadPath = "resources/upload";
		try {
			String realPath = session.getServletContext().getRealPath(uploadPath);
			Path path = Paths.get(realPath + "/" + tmpEvent.getEvent_poster());
			Files.deleteIfExists(path);
			path = Paths.get(realPath + "/" + tmpEvent.getEvent_thumbnail());
			Files.deleteIfExists(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/adminEventList";
	}
}
