package com.itwillbs.cinepick.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.TicketMapper;
import com.itwillbs.cinepick.vo.BookVO;

@Service
public class TicketService {
	
	@Autowired
	private TicketMapper mapper;

	public int registTicket(String allTickets, String seats) {
		return mapper.insertTicket(allTickets, seats);
	}

	public int registTicket(String allTickets, String seats, int total, int sche_idx) {
		return mapper.insertTickets(allTickets, seats, total, sche_idx);
	}

	public int registPay(Map<String, Object> map) {
		return mapper.insertPay(map);
	}
	
	public int registBook(Map<String, Object> map) {
		return mapper.insertBook(map);
	}

	public String getBookId(Map<String, Object> map) {
		return mapper.selectBookId(map);
	}
	
	public BookVO getBook(String bookId) {
		return mapper.selectBook(bookId);
	}

	public int modifySeatList(Map<String, Object> map) {
		return mapper.updateSeatList(map);
	}

	public int getScheIdx(Map<String, Object> map) {
		return mapper.selectScheIdx(map);
	}

	public int registSeat(Map<String, Object> map) {
		return mapper.insertSeat(map);
		
	}

	public int modifySeat(Map<String, Object> map) {
		return mapper.updateSeat(map);
	}

	
	
//	public int registBookAndPay(Map<String, Object> map) {
//		mapper.insertPay(map);
////		return mapper.insertBook(map);
//		return mapper.insertBook(map);
//	}
	
//	public int registBookAndPay(Map<String, Object> map) {
////		mapper.insertPay(map);
////		return mapper.insertBook(map);
//		return mapper.insertPay(map);
//	}

}
