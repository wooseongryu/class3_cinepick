package com.itwillbs.cinepick.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.TicketMapper;

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

	public int registBookAndPay(Map<String, Object> map) {
//		mapper.insertPay(map);
//		return mapper.insertBook(map);
		return mapper.insertPay(map);
	}

}
