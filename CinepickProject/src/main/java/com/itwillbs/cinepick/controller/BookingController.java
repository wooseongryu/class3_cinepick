package com.itwillbs.cinepick.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.service.BookingService;
import com.itwillbs.cinepick.vo.BookVO;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.ScheduleVO;
import com.itwillbs.cinepick.vo.SeatVO;
import com.itwillbs.cinepick.vo.TheaterVO;

@Controller
public class BookingController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BookingService bookingService;
	
	
	/*====================================================================
	 * - 목차 -
	 * 1. 영화, 극장, 시간 선택
	 * 2. 좌석 선택
	 * 3. 결제
	 * 4. 예매 완료
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 1. 영화, 극장, 시간 선택
	 * ===================================================================
	 * */
	
	// 영화, 극장, 시간 선택 페이지
	@GetMapping("bookingStepOne")
	public String bookingStepOne(@RequestParam(defaultValue = "-1") int movie_code, Model model) {
		System.out.println("BookingController - bookingStepOne()");
		
		// 영화 상세보기에서 예매 클릭 시 아래와 같은 형식으로 파라미터 전달.
		// http://localhost:8080/cinepick/bookingStepOne?movie_code=20197122
		
		model.addAttribute("movie_code", movie_code);
		
		// 메인의 예매로 바로 들어왔을 때.
		if (movie_code == -1) {
			return "cinepick/booking/step1";
		}
		
		// 영화상세보기에서 들어왔을 때.
		int countValidMovie = bookingService.checkValidCode(movie_code);
		if (countValidMovie < 1) {
			model.addAttribute("msg", "예매 불가능한 영화입니다.");
			return "fail_back";
		}
		
		return "cinepick/booking/step1";
	}
	
	@ResponseBody
	@PostMapping("getMovieList")
	public String getMovieList(Gson gson) {
		System.out.println("BookingController - getMovieList()");
//		List<MovieVO> movieList = adminService.selectMovie();
		List<MovieVO> movieList = bookingService.selectMovies();
		
		return gson.toJson(movieList);
	}
	
	@ResponseBody
	@PostMapping("getCityList")
	public String getCityList(Gson gson, int movie_code) {
		System.out.println("BookingController - getCityList()");
		
		List<TheaterVO> cityList = bookingService.selectValidCity(movie_code);
		MovieVO movieInfo = bookingService.selectMovie(movie_code);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cityList", cityList);
		map.put("movie_code", movie_code);
		map.put("movieInfo", movieInfo);
		
		return gson.toJson(map);
	}
	
	@ResponseBody
	@PostMapping("getTheaterList")
	public String getTheaterList(Gson gson, @RequestParam Map<String, Integer> map) {
		System.out.println("BookingController - getTheaterList()");
		
		List<TheaterVO> theaterList = bookingService.selectValidTheater(map);
		
		return gson.toJson(theaterList);
	}
	
	@ResponseBody
	@PostMapping("getDateList")
	public String getDateList(Gson gson, @RequestParam Map<String, Integer> map) {
		System.out.println("BookingController - getDateList()");
		
		List<ScheduleVO> dateList = bookingService.selectValidDate(map);
		System.out.println(dateList);
		
		return gson.toJson(dateList);
	}
	
	@ResponseBody
	@PostMapping("getTimeList")
	public String getTimeList(Gson gson, @RequestParam Map<String, Object> map) {
		System.out.println("BookingController - getTimeList()");
		System.out.println(map);
		
		List<ScheduleVO> timeList = bookingService.selectValidTime(map);
		
		String tmp = "-1";
		List<String> arr = new ArrayList<String>();
		for (ScheduleVO vo : timeList) {
			if (!vo.getScreen_name().equals(tmp)) {
				tmp = vo.getScreen_name();
				arr.add(tmp);
			}
		}
		
		map.clear();
		map.put("timeList", timeList);
		map.put("screenList", arr);
		
		
		return gson.toJson(map);
	}
	
	@ResponseBody
	@PostMapping("getSchedule")
	public String getSchedule(ScheduleVO schedule, Gson gson) {
		System.out.println("BookingController - getSchedule()");
		
		Map<String, String> map = bookingService.selectSchedule(schedule);
		
		System.out.println("))))))))))))))))))))))))))");
		System.out.println(map);
		
//		return String.valueOf(bookingService.selectSchedule(schedule));
		return gson.toJson(map);
	}
	
	/*====================================================================
	 * 2. 좌석 선택
	 * ===================================================================
	 * */
	
	// 좌석 선택 페이지
	@PostMapping("bookingStepTwo")
//	@GetMapping("bookingStepTwo")
	public String bookingStepTwo(int sche_idx, Model model, HttpSession session) {
//	public String bookingStepTwo() {
		System.out.println("BookingController - bookingStepTwo()");
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 후 예매하실 수 있습니다.");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
		//엄성윤 추가
		model.addAttribute("sche_idx", sche_idx);
		
		System.out.println(")))))))))))))))))))))스케줄 번호(schedule테이블 - sche_idx) : " + sche_idx);
		
		String seatList = bookingService.selectSeatList(sche_idx);
		
		model.addAttribute("seatList", seatList);
		System.out.println("스케줄 넘버" + sche_idx + "의 좌석 현황은 " + seatList);
		
		
		return "cinepick/booking/step2";
	}
	
	/*====================================================================
	 * 3. 결제
	 * ===================================================================
	 * */
	
	// 결제 페이지로 이동
	@PostMapping("stepPay")
	public String bookPayment() {
		return "cinepick/booking/stepPay";
	}
	
	@GetMapping("bookingPay")
	@ResponseBody
//	public String bookPay(int amount, String imp_uid, String merchant_uid) throws Exception{
	public String bookPay(@RequestParam Map<String, Object> map, Model model, HttpSession session) throws Exception{
		
		System.out.println("결제 성공");
		System.out.println(map);
		
		Date date = new Date(Long.parseLong(map.get("paid_at").toString()) * 1000);
		
//		System.out.println(date);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		map.put("pay_date", sdf.format(date));

		bookingService.registPay(map);
		bookingService.registBook(map);
		// 객체를 메서드 파라미터로 전달하는 것은 참조형이니까 주소, map에 담아준다.
		
		// 1107 3:19 주석
//		String book_id = bookingService.getBookId(map);
		
//		String book_id = (String) map.get("book_id");
		String bookId = (String) map.get("book_id");
		
//		System.out.println("예매 번호는 이거 selectKey 사용: " + book_id);
		
		// 1107 10:43 주석
//		int scheExists = bookingService.getScheIdx(map);
//		map.put("scheExists", scheExists);
//		if(scheExists > 0) {
//			int updateCount = bookingService.modifySeat(map);
//		} else {
//			int insertCount = bookingService.registSeat(map);
//		}
		
		bookingService.insertUpdateSeat(map);
		
//		int seatCount = bookingService.modifySeatList(map);
		
//		model.addAttribute("bookNow", map.get(sdf));
		
		
////		System.out.println("결제 금액 : " + amount);
//		System.out.println("imp_uid : " + imp_uid);
//		System.out.println("merchant_uid : " + merchant_uid);
//
//		model.addAttribute("imp_uid", imp_uid);
		
//		model.addAttribute("book_id", book_id);
		
		
		//1107 3시 주석
//		session.setAttribute("book_id", book_id);
		// 그래서 파라미터로 줘야 함. session에 저장되는 속성이 같으니까. 파라미터로 처리하면 request객체가 달라서.
		
		// 같은 아이디로 했을 때 오류 나는 것 수정해야 되나
		
		
		return bookId;
	}
	
	
	/*====================================================================
	 * 4. 예매 완료
	 * ===================================================================
	 * */
	
	@GetMapping("bookComplete")
	public String bookComplete(HttpSession session, Model model, @RequestParam("bookId") String bookId) {
		
//		String bookId = (String) session.getAttribute("book_id");
		System.out.println("북 아이디 나옴?" +  bookId);
//		String bookId = (String) session.getAttribute("book_id");
		if(bookId != null) {
			System.out.println("예매번호 전해지면" + bookId);
			
		} else {
			System.out.println("bookId 없음");
		}
		
		BookVO book = bookingService.getBook(bookId);
//		System.out.println(book.getBook_id());
		model.addAttribute("book", book);
		
		return "cinepick/booking/step5";
		
	}
	
}
