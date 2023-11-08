package com.itwillbs.cinepick.controller;

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
import com.itwillbs.cinepick.service.TicketService;
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
	
	@Autowired
	private TicketService ticketService;
	
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
		
		String seatList = ticketService.selectSeatList(sche_idx);
		
		model.addAttribute("seatList", seatList);
		System.out.println("스케줄 넘버" + sche_idx + "의 좌석 현황은 " + seatList);
		
		
		return "cinepick/booking/step2";
	}
	
	/*====================================================================
	 * 3. 결제
	 * ===================================================================
	 * */
	
	// 결제 페이지
	@GetMapping("bookingStepThree")
	public String bookingStepThree() {
		System.out.println("BookingController - bookingStepThree()");
		return "cinepick/booking/step3";
	}
	
	//	엄성윤 테스트
	// 결제 페이지(Post)
	@PostMapping("bookingStepThree")
	public String bookingStepThreePost() {
		System.out.println("BookingController - bookingStepThree(), post");
		return "cinepick/booking/step3";
	}
	
	/*====================================================================
	 * 4. 예매 완료
	 * ===================================================================
	 * */
	
	// 예매 완료 페이지
	@GetMapping("bookingStepFour")
	public String bookingStepFour() {
		System.out.println("BookingController - bookingStepFour()");
		return "cinepick/booking/step4";
	}
}
