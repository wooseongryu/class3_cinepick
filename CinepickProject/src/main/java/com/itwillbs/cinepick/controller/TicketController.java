package com.itwillbs.cinepick.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.TicketService;
import com.itwillbs.cinepick.vo.BookVO;

@Controller
public class TicketController {
	
	@Autowired
	private TicketService service;
	
	
	
	// 좌석 -> 예매내역 출력
	@GetMapping("payment-successcomplete")
	public String reserveFinish() {
		
		
		System.out.println("SeatTestController - reserveFinish()ㄴㄴ");
		return "cinepick/booking/step5";
	}

	// 좌석 -> 예매내역 출력
	@PostMapping("reserve")
	public String reserveFinish2(@RequestParam String allTickets, @RequestParam String seats, 
			Model model) {
		
		System.out.println("reserve 매핑 - post");
		
		System.out.println(allTickets);
		System.out.println(seats);
		
//		model.addAttribute("allTickets", allTickets);
//		model.addAttribute("seats", seats);
		
		int insertCount = service.registTicket(allTickets, seats);
		
		if(insertCount > 0) {
			System.out.println("티켓 들어감");
		}
		
		return "cinepick/booking/step3";
	}
	
	// 좌석 -> 예매내역 출력
	@GetMapping("reserve")
	public String reserveFinish3(@RequestParam String allTickets, @RequestParam String seats, 
			Model model) {
		
		System.out.println("reserve 매핑 - get");
		
		System.out.println(allTickets);
		System.out.println(seats);
		
//		model.addAttribute("allTickets", allTickets);
//		model.addAttribute("seats", seats);
		
		int insertCount = service.registTicket(allTickets, seats);
		
		if(insertCount > 0) {
			System.out.println("티켓 들어감");
		}
		
		return "cinepick/booking/step3";
	}
	
//	// 좌석 -> 예매내역 출력
//	@GetMapping("bookingStepTest")
//	public String bookingStepTest(@RequestParam String seats, @RequestParam String allTickets) {
//		
//		System.out.println("step6 매핑");
//		
//		System.out.println(seats);
//		System.out.println(allTickets);
//		return "step6_test";
//	}
	
	@GetMapping("paySuccess")
	public String paySuccess() {
		
		
		
		return "cinepick/booking/step5";
	}
	
	@GetMapping("stepPay")
	public String stepPay() {
		return "cinepick/booking/stepPay_test2";
	}
	
	@GetMapping("headTest")
	public String headTest() {
		return "cinepick/booking/headerTest";
	}
	
	@GetMapping("payTest")
	public String payTest() {
		return "cinepick/booking/payTest";
	}
	
	@PostMapping("bookPay")
	public String bookPay(@RequestParam String allTickets, @RequestParam String seats, 
			@RequestParam int total, @RequestParam int sche_idx,
			Model model) {
		
		System.out.println("bookPay 매핑 - post");
		
		System.out.println(allTickets);
		System.out.println(seats);
		System.out.println(total);
		System.out.println("스케줄 번호: " + sche_idx);
		
		model.addAttribute("allTickets", allTickets);
		model.addAttribute("seats", seats);
		
		int insertCount = service.registTicket(allTickets, seats, total, sche_idx);
////		
		if(insertCount > 0) {
			System.out.println("bookPay1101 티켓 들어감");
		}
		
		return "cinepick/booking/stepPay_test2";
	};
	
	@PostMapping("stepPay")
	public String bookPayment() {
		
		return "cinepick/booking/stepPay";
		
	}
	
	@PostMapping("hiddenTest")
	public String hiddenTest() {
		System.out.println("히든 테스트2 - POST");
		return "cinepick/booking/hiddenTest";
	}
	@GetMapping("hiddenTest")
	public String hiddenTest2() {
		System.out.println("히든 테스트2 - Get");
		return "cinepick/booking/hiddenTest";
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

//		12:50 주석
//		int insertCount = service.registBookAndPay(map);
		int insertPayCount = service.registPay(map);
		int insertBookCount = service.registBook(map);
		String book_id = service.getBookId(map);
		System.out.println("예매 번호는 이거 : " + book_id);
		
//		model.addAttribute("bookNow", map.get(sdf));
		
		
////		System.out.println("결제 금액 : " + amount);
//		System.out.println("imp_uid : " + imp_uid);
//		System.out.println("merchant_uid : " + merchant_uid);
//
//		model.addAttribute("imp_uid", imp_uid);
		
//		model.addAttribute("book_id", book_id);
		session.setAttribute("book_id", book_id);
		
		// 같은 아이디로 했을 때 오류 나는 것 수정해야 되나
		
		
		return "";
	}
	
	@GetMapping("bookComplete")
	public String bookComplete(HttpSession session, Model model) {
		
		String bookId = (String) session.getAttribute("book_id");
		if(bookId != null) {
			System.out.println("예매번호 전해지면" + bookId);
			
		} else {
			System.out.println("bookId 없음");
		}
		
		BookVO book = service.getBook(bookId);
//		System.out.println(book.getBook_id());
		model.addAttribute("book", book);
		
		return "cinepick/booking/step5";
		
	}
//	@GetMapping("bookComplete")
//	public String bookComplete(@RequestParam("book_id") String bookId, Model model) {
//		
//		System.out.println("전해지면" + bookId);
//		
////		System.out.println("여기서 맵이 보임??" + bookNow);
////		System.out.println("예매번호 전해지면 : " + model.getAttribute("book_id"));
//		
////		System.out.println("스케줄 번호: " + sche_idx);
//		
////		BookVO book = service.getBook(sche_idx);
//		
//		return "cinepick/booking/step5";
//		
//	}
	
	
	
}
